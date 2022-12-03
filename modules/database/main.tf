resource "random_password" "passsword" {
  length = 16
  special = true
  override_special = "_%@/'\""
}

resource "aws_db_instance" "database" {
    allocated_storage = 5
    engine = "mysql"
    engine_version = "8.0"
    instance_class = "db.t2.micro"
    identifier = "${var.namespace}-db-instance"
    name = "pets"
    username = "admin"
    password = random_password.password.result
    skip_final_snapshot = true
    # These values came from the networking module
    
    db_subnet_group_name = var.vpc.database_subnet_group
    vpc_security_group_ids = [var.sg.db]
    
}