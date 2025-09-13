variable "my-list" {
    type = list
    default = ["hello","world","hello"]
}

output "mylist" {
    value = var.my-list
}