resource "aws_instance" "server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  availability_zone      = var.availability_zone
  vpc_security_group_ids = [aws_security_group.ssh.id, aws_security_group.application.id, aws_security_group.web.id]

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
    tags = {
      Name = "Server"
    }
  }

  tags = {
    Name = "Server Machine"
  }
}

resource "aws_volume_attachment" "world-save" {
  device_name = var.world_save_device_name
  volume_id   = aws_ebs_volume.world.id
  instance_id = aws_instance.server.id
}

resource "aws_ec2_instance_state" "server" {
  instance_id = aws_instance.server.id
  state       = "running"
}
