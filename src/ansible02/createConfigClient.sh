#!/bin/bash

# Получаем IP-адрес без маски подсети
IP_ADDR=$(ip -br a | awk '{ print $3 }' | tail -n 1 | awk -F'/' '{ print $1 }')

# Создаем конфигурационный файл
cat <<EOF > /etc/consul.d/consul_client.hcl
server = false
datacenter = "server1",
node_name = "$(hostname)"
data_dir = "/var/lib/consul"
advertise_addr = "${IP_ADDR}"
client_addr = "127.0.0.1"
retry_join = ["192.168.56.12"]
encrypt = "2hYmtlHwoVKpOHAlHD9HnNXlbSzKaqKu2ScCEcpkr0Y="
log_level = "warn"
enable_syslog = true
enable_local_script_checks=true
enable_script_checks=true
connect {
  enabled = true
}
EOF
