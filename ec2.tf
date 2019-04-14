resource "aws_key_pair" "bastion" {
  key_name   = "${var.bastion_key_name}"
  public_key = "${file(var.bastion_key_path)}"
}

resource "aws_instance" "bastion" {
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type        = "t2.micro"
  subnet_id            = "${aws_subnet.PublicSubnetA.id}"
  security_groups = [
    "${aws_security_group.sec_bastion.id}",
  ]
  root_block_device {
    volume_type = "gp2"
    volume_size = "8"
    delete_on_termination = true
  }
  associate_public_ip_address = true
  key_name = "${aws_key_pair.bastion.id}"
  user_data = "${data.template_file.sysprep-bastion.rendered}"
  tags {
    Name = "Bastion"
  }
}

