output "ec2_instance_id" {
  value = aws_instance.ec2_instance.id
}

output "ec2_instance_state" {
  value = aws_instance.ec2_instance.instance_state
}