output "security_group_id" {
  value       = aws_security_group.web_sg.id
  description = "Dynamically generated Security Group ID"
}

output "open_ports" {
  value       = var.ingress_ports
  description = "List of configured open ports"
}
