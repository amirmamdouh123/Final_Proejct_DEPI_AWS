
resource "aws_instance" "ec2_instance" {
  ami = "ami-032346ab877c418af"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  tags = {
    Name= "Jenkins_EC2"
  }
}

resource "aws_security_group" "vpc_security_group" {

    vpc_id= module.aws_vpc.Vpc_id 
    ingress {                    #for access frontend
        from_port = 80
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }

    ingress {                      #for access jenkins
        from_port = 8080
        to_port = 8080
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }   
    ingress {               #for access backend
        from_port = 3000
        to_port = 3000
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }   


    tags = {
      Name= "ec2_security_group"
    }

}