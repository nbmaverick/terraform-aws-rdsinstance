### Instruction on how to create RDS instance

### Please copy paste below code
```
module rds {
    source = "./"
    allocated_storage = 20
    engine            = "mysql"
    engine_version    = "5.7"
    instance_class    = "db.t3.micro"
    db_name              = "mydb"
    username          = "foo"
    password          = "foobarbaz"
    parameter_group_name = "default.mysql5.7"
    publicly_accessible  = true
    tags = {
    Name = "main"
 }
}

```

### If you want the putput
```
output endpoint {
  value = aws_db_instance.default.address
}

```