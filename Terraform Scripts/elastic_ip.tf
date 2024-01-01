resource "aws_instance" "AwsElasticIP" {
    ami = "0cff7528ff583bf9a"
    instance_type = "t2.micro"
    key_name = "devops" 
    tags = {
      "Name" = "EC2 Instance By Terraform With Elastic IP"  # This creates instances with Name EC2 Instance By Terraform - 0 , EC2 Instance By Terraform - 1 ...
      "Environment" = "Dev"
    }
}

resource "aws_eip" "masseip" {
  
}

resource "aws_eip_association" "masseip_association" {
  instance_id = aws_instance.AwsElasticIP.id
  allocation_id = aws_eip.masseip
}