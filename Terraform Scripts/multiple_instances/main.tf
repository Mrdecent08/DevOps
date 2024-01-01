resource "aws_instance" "sample_instance" {
    ami = "${var.AMI}" # referring value via variable(vars) file
    count = 2    # Number of Instances
    instance_type = "t2.micro"
    security_groups = [ "" ]
    key_name = "devops" # AName of pem file
    tags = {
      "Name" = "EC2 Instance By Terraform - ${count.index}"  # This creates instances with Name EC2 Instance By Terraform - 0 , EC2 Instance By Terraform - 1 ...
      "Environment" = "Dev"
    }
}

