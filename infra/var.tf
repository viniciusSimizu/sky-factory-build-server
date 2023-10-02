variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.large"
}

variable "ami" {
  type    = string
  default = "ami-03a6eaae9938c858c"
}

variable "world_save_device_name" {
  type    = string
  default = "/dev/xvde"
}

variable "key_pair_name" {
  type    = string
  default = "sky-factory"
}

variable "availability_zone" {
  type = string
  default = "us-east-1c"
}
