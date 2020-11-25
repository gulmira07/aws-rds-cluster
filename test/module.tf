module "db" {
  source = "../"
  region = "us-east-2"
  subnet_ids = [
		"subnet-03588bf649e6398db", 
		"subnet-05955cbd536839cb3", 
		"subnet-04a57e134eca889bc"
	]
  security_group_name = "db"
  allowed_hosts = [
    "0.0.0.0/0",
  ]
  db_name             = "dbname"
  engine              = "aurora"
  engine_version      = "5.6.10a"
  instance_class      = "db.t2.micro"
  username            = "foo"
  password            = "foobarbaz"
  publicly_accessible = true
}
output "region" {
  value = "${module.db.region}"
}
output "subnet_list" {
  value = "${module.db.subnet_list}"
}
output "allows_hosts" {
  value = "${module.db.allowed_hosts}"
}
output "DB_NAME" {
  value = "${module.db.DB_NAME}"
}