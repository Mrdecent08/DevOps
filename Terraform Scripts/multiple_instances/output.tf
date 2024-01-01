output "awsec2instancePublicIP" {
  description = "The Public IP address of EC2 instance."
  value = "${aws_instance.sample_instance.public_ip}"
}

output "awsec2instancePrivateIP" {
  description = "The Private IP address of EC2 instance."
  value = aws_instance.sample_instance.private_ip
}