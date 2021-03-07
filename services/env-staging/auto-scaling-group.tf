resource "aws_autoscaling_group" "asg" {
    name = "asg"
    max_size = 3
    min_size = 2
    vpc_zone_identifier = [aws_subnet.private_subnet.id]
    launch_template {
      id = aws_launch_template.launch-template.vpc_id
    }
}