###this is the output



output "public_ips"{
    description = "Public IP address"
    value = aws_instance.counter_lab[*].public_ip
}