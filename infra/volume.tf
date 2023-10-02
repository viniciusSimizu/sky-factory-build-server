resource "aws_ebs_volume" "world" {
  availability_zone = var.availability_zone
  size              = 1
  type              = "gp3"

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "Game World"
  }
}
