resource "aws_security_group" "sample_security_group" {
  name = "SecurityGroupByTerraform"
  description = "Security Group By Tf"
  vpc_id = "vpc-fd01d696" # vpc_id need to be mentioned
    ingress {
            description = "Enabling Inbound Rule"
            from_port = 8080    # starting port
            to_port = 8080      # Ending port
            protocol = "tcp"
            cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
            description = "Enabling Inbound Rule"
            from_port = 8088       # starting port
            to_port = 8088         # Ending port
            protocol = "tcp"
            cidr_blocks = [ "0.0.0.0/0" ]
    }
    
   egress {
            description = "Enabling Outbound Rule"
            from_port = 8080    # starting port 
            to_port = 8080      # Ending port
            protocol = "tcp"
            cidr_blocks = [ "0.0.0.0/0" ]
        }

    tags = {
        Name = "SG By Terraform"
    }

}