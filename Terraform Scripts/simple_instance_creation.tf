provider "aws" {
    region = "us-east-1"
    secret_key = ""
    access_key = ""
}

resource "aws_instance" "sample_instance" {
    ami = "ami-0fc61db8544a617ed"
    instance_type = "t2.micro"
    security_groups = [ "" ]
    key_name = "devops"
    tags = {
      "key" = "value",
      "key2" = "value2"
    }
}

# terraform init
# terraform fmt
# terraform validate
# terraform plan
# terraform apply
# terraform destroy
# terraform output
