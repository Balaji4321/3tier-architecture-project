

resource "aws_instance" "web-server1" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server-1"
  }

}

resource "aws_instance" "web-server2" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server-2"
  }

}