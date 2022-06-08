provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  key_name      = "KeyPairDanielCertif"
  tags = {
    Name = "ec2-daniel"
  }
  root_block_device {
    delete_on_termination = true
  }
}
