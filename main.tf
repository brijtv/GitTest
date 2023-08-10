provider "aws" {
  region  = "us-east-1"
  access_key = "AKIA2QBFHLCST3SDJRVN"
  secret_key = "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"
}

resource "aws_vpc" "first-vpc" {
  cidr_block       = "10.0.0.0/16"
  #instance_tenancy = "default"

  tags = {
    Name = "production"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}
resource "aws_instance" "my-first-server" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t3.micro" 

  tags = {
    Name = "ubuntu"
  
  }
}

  
# resource "<porovider>_<resource_type>" "name"{
#    config options
  # key="value"
   # key2="anothervalue"
# }