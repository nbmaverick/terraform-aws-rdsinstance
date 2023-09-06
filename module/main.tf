module rds {
    source = "../"
    allocated_storage = 20
    engine            = "mysql"
    engine_version    = "5.7"
    instance_class    = "db.t3.micro"
    db_name              = "mydb"
    username          = "foo"
    password          = "foobarbaz"
    parameter_group_name = "default.mysql5.7"
    tags = {
    Name = "main"
 }
}

output endpoint {
    value = module.rds.endpoint
}