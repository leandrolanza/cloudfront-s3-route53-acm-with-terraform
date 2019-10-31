
provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

provider "aws" {
  region  = "${var.region2}"
  profile = "${var.profile}"
  alias   = "virginia"
}



module "network" {
  source             = "../modules/network"
  environment        = "${var.environment}"
  availability_zones = "${var.availability_zones}"
  ami                = "${var.ami}"
  key_name            = "${var.key_name}"
}

module "frontend" {
  source      = "../modules/frontend"
  environment = "${var.environment}"
  domain      = "${var.domain}"
  }

module "backend" {
  source              = "../modules/backend"
  environment         = "${var.environment}"
  domain              = "${var.domain}"
  vpc_id              = "${module.network.vpc_id}"
  instance-type       = "${var.instance-type}"
  private_subnets_id  = "${module.network.private_subnets_id}"
  image_id            = "${var.image_id}"
  key_name            = "${var.key_name}"
}
