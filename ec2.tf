module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 1.0"

  name                   = "my-cluster"
  instance_count         = 2

  ami                    = "ami-00068cd7555f543d5"
  instance_type          = "t2.micro"
  key_name               = "vova_mac"
  monitoring             = true
  vpc_security_group_ids = ["sg-d1b9e784"]
  subnet_id              = "subnet-961d13ca"

}