output "db_config" {
    value = {
        # coming from select output of the aws_db_instance resource
        user = aws_db_instance.database.username
        password = aws_db_instance.database.password
        database = aws_db_instance.database.name
        hostname = aws_db_instance.database.address
        port = aws_db_instance.database.port
    }
}