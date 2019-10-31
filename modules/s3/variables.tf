
//CONFIGURAÇÕES GERAIS

variable "region" {
    description = "Regiao Stage para criar nossos recursos Ohio"
    default = "us-east-2"
}
variable "availability_zones" {
    type = "list"
    default = [
        "us-east-2a",
        "us-east-2b",
        "us-east-2c"
    ]
}

variable "region2" {
    description = "Regiao Prod para criar recursos Virginia"
    default     = "us-east-1"
}
/*
variable "availability_zones" {
    type = "list"
    default = [
        "us-east-1a",
        "us-east-1b",
        "us-east-1c"
    ]
}
*/
variable "environment" {
    description = "The name of the environment"
    default     = "Develop"
}

variable "profile" {
    default = "lanza@bredas.com.br"
}

variable "domain" {
    default = "chacarasmarilia.com.br"
  
}

variable "instance-type" {
    default = "t2.micro"
  
}

variable "ami" {
    default = "ami-bd6f59d8"
}

variable "image_id" {
    default = "ami-0307f7ccf6ea35750" 
}

variable "key_name" {
    default = "chave-teste-lanza"
}

