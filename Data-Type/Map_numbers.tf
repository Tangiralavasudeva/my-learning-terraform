variable "my-map" {
  type = map(number)
}

output "variable_value" {
  value = var.my-map
}