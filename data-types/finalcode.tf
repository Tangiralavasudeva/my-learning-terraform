variable "username" {
  type    = number
  default = 2494475
}

resource "aws_iam_user" "lb" {
  name = tostring(var.username)  # Convert number to string
}
