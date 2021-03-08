resource "aws_alb" "alb" {
    subnets = ["aws_subnet.public_subnet.id"]
    internal = false
    security_groups = [ "aws_security_group.lb-sec.id" ]
  
}
output "lb_eip" {
    value = aws_alb.alb.dns_name
  
}

resource "aws_alb_target_group" "target" {
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.master_vpc.id
  
}
