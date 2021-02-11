variable "region" {
  default = "us-west-1"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-047a51fa27710816e"
    "us-west-1" = "ami-005c06c6de69aee84"
  }
}
