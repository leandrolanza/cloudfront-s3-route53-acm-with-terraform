variable "domain" {}

variable "acl" {
    default = "public-read"
}
variable "principals" {
    type = "list"
    default = []
}
