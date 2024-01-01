variable "AMI" {
  description = "This variable has the AMI Value"
  default = "ami-0cff7528ff583bf9a"
}

variable "instanceType" {
  description = "This variable has the instance type value"
  default = "t2.micro"
}

variable "NumberOfInstances" {
  description = "This variable has the count value"
  default = "2"
}

variable "usernames" {
  type = list(string) 
  default = [ "srinivas","shyam" ]
}

# TO CHANGE PARAMS ON RUNTIME
# terraform apply -auto-approve -var NumberOfInstances=3
# terraform destroy -var NumberOfInstances=3

/*
terraform.tfvars
AMI = "ami-0cff7528ff583bf9a"
instanceType = "t2.micro"
NumberOfInstances = "2"
*/ 

# terraform.tfvars