resource "aws_instance" "web" {
  ami           = "ami-00068cd7555f543d5"
  instance_type = "t2.micro"
  user_data     = "${file("user_data.sh")}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
}
