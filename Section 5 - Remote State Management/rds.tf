resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "MySQL_8.0.42"
  instance_class       = "db.m7g.large"
  username             = "foo"
  password             = file("C:/my-learning-terraform/Section 5 - Remote State Management/rds_pass.txt")
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = "true"
}