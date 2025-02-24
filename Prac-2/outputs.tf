#this is the output from the run
output "public_ips" {
  description = "this is a list of ip"
  value       = aws_instance.counter_lab[*].public_ip

}