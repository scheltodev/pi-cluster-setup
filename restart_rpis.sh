#!/bin/bash

# Liste der Raspberry Pi-IPs
RPI_HOSTS=("192.168.2.112" "192.168.2.113" "192.168.2.114") # Ersetze durch die tatsächlichen IPs

# Benutzername
USER="schelto"

# Schleife durch alle Hosts und führe Neustart aus
for HOST in "${RPI_HOSTS[@]}"; do
  echo "Starte Raspberry Pi neu: $HOST"
  ssh "$USER@$HOST" "sudo reboot" && echo "Neustart erfolgreich: $HOST" || echo "Fehler beim Neustart: $HOST"
done
