# Warning: Never check sensitive values like usernames and passwords into source control.
# Create RDS MySQL Database

resource "aws_db_instance" "db1" {
  allocated_storage   = 10
  db_name             = "mydb"
  engine              = "mysql"
  engine_version      = "5.7"
  username            = var.db_username
  password            = var.db_password
  instance_class      = "db.t3.micro"
  skip_final_snapshot = true
}