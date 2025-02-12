# Add your output code here!
output "ebs_block_devie" {
  description = "block value ids"
  value = aws_instance.splat_lab.ebs_block_device[*].volume_id
}