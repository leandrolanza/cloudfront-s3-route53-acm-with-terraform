provider "aws" {
    alias   = "production"
    profile = "default"
    region  = "us-east-1"
}

module "cloudfront" {
  source = "modules/cloudfront"
  domain = "mydomain.com.br"
}
