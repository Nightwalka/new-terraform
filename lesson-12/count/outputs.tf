# Add your output code here!

output "public_ips" {
  description = "Pub ip addresses"
  value       = aws_instance.count_lab[*].public_ip
  }