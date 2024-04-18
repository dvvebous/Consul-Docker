bootstrap = true
server = true
log_level = "DEBUG"
enable_syslog = true
datacenter = "server1"
addresses {
http = "0.0.0.0"
}
advertise_addr  = "192.168.56.12"
node_name = "ubuntu2004"
data_dir = "/var/lib/consul"
encrypt = "2hYmtlHwoVKpOHAlHD9HnNXlbSzKaqKu2ScCEcpkr0Y="
ui=true
enable_local_script_checks=true
enable_script_checks=true
connect {
  enabled = true
}

