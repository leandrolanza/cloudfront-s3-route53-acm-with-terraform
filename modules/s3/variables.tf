variable "domain" {}

variable "acl" {
    default = "private"
}
variable "principals" {
    type = "list"
    default = []
}
