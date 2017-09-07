resource "aws_vpn_gateway" "default" {
  vpc_id = "${var.vpc_id}"
  tags { 
     Name = "${var.name}"
    }
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_vpn_gateway_attachment" "default" {
  vpc_id         = "${var.vpc_id}"
  vpn_gateway_id = "${aws_vpn_gateway.default.id}"

  lifecycle {
    create_before_destroy = true
  }
}
