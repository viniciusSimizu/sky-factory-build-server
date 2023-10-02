resource "aws_key_pair" "sky-factory" {
  key_name   = var.key_pair_name
  public_key = file("~/.ssh/${var.key_pair_name}.pub")

  tags = {
    Name = "Sky Factory"
  }
}
