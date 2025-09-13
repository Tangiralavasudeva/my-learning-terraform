provider "aws" {
  region = "us-east-1"
  
}
resource "aws_instance" "myec2" {
   ami = "ami-0b09ffb6d8b58ca91"
   instance_type = "t2.medium"

   provisioner "local-exec" {
    command = "echo ${self.public_ip} >> ip_address.txt"
  }
}
/*
resource "aws_instance" "myec2" {
   ami = "ami-0b09ffb6d8b58ca91"
   instance_type = "t2.medium"
   key_name = "terraform-key"
   vpc_security_group_ids = ["aws_security_group.test.id"]

 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key  = file("./terraform-key.pem")
    host     = self.public_ip
  }

 provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}
*/