resource "aws_instance" "sample_instance" {
    ami = "${var.AMI}" 
    # ami = var.AMI
    instance_type = "t2.micro"
    security_groups = [ "" ]
    key_name = "devops"
    # user_data = "${file("installApacheHttpServer.sh")}"
    user_data = file("installApacheHttpServer.sh")
    tags = {
      "Name" = "EC2 Instance By Terraform "  
      "Environment" = "Dev"
    }
}

