resource "aws_security_group" "nginx" {
    name = "nginx-security-group"
    ingress {
        from_port = 80
        to_port = 80
        protocol = "HTTP"
        security_groups = [ aws_security_group.lb-sec.name ]
    }
  
}

resource "aws_security_group" "lb-sec" {
  name   = "lb-secgroup"
  vpc_id = aws_vpc.master_vpc.id

  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}