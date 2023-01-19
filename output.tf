output "public-ec2-public_ip" {
  value = aws_instance.ec2_public.public_ip
}
output "public-ec2-private_ip" {
  value = aws_instance.ec2_public.private_ip
}
output "private-ec2-private_ip" {
  value = aws_instance.ec2_private.private_ip
}
