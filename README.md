AWS VPN Gateway
===============

# This module is deprecated and [terraform-aws-modules/terraform-aws-vpc module](https://github.com/terraform-aws-modules/terraform-aws-vpc) published on [the Terraform registry](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws) should be used instead.

## This repository will not have active support any more.

---

This module is intended to deploy a VPN Gateway and attach it to a VPC.

Module Input Variables
----------------------

- `name`   - Unique name used to label the VPN Gateway.
- `vpc_id` - VPC id where the VPN Gateway will be attached.

Usage 
-----
```js
module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc_only?ref=master"

  name                 = "tf-aws-vpn-example-vpc"
  cidr                 = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "vpn" {
  source = "github.com/terraform-community-modules/tf_aws_vpn_gw"

  name   = "tf-aws-vpn-example"
  vpc_id = "${module.vpc.vpc_id}"
}
```

Outputs
-------
- `vgw_id` - ARN for the created VPN Gateway

Author
------
Created and maintained by [Shayne Clausson](https://github.com/sclausson)
