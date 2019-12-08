resource "aws_instance" "web" {
  ami           = "ami-00068cd7555f543d5"
  instance_type = "t2.micro"


  provisioner "remote-exec" {
    inline = [
      "sudo yum install java-1.8.0-openjdk-devel",
      "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
      "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
      "sudo yum install jenkins",
      "sudo systemctl start jenkins",
      "sudo systemctl enable jenkins"
    ]
  }
}
