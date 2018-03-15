resource "aws_instance" "test001" {
  count = "${var.count}"
  ami = "ami-8ee056f3"
  instance_type = "t2.small"
  subnet_id =  "${var.subnet}"
  tags {
    Name = "${var.servername}"
    #"-${count.index}"
  }
}