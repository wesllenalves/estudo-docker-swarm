#!/bin/bash

# Obtém o status de todas as máquinas Vagrant no diretório atual
statuses=$(vagrant status | grep -E 'running|poweroff')

# Percorre cada status e obtém o nome da máquina e o endereço IP
while IFS= read -r status; do
    machine=$(echo "$status" | awk '{print $1}')
    ip=$(vagrant ssh "$machine" -c "hostname -I 2>/dev/null" 2>/dev/null)
    if [ ! -z "$ip" ]; then
        echo "Máquina: $machine"
        echo "Endereço IP: $ip"
        echo
    fi
done <<< "$statuses"
