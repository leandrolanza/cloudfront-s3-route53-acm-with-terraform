variable "price_class" {
    default = "PriceClass_All"
}

variable "http_version" {
    default = "http2"  
}
variable "domain" {}

variable "default_root_object" {
    default = "index.html"
}

variable "allowed_methods" {
    type = "list"
    default = ["GET", "HEAD"]
    description = "List of allowed methods (e.g. 'GET, PUT, POST, DELETE, HEAD') for aws cloudfront"
}

variable "cached_methods" {
    type = "list"
    default = ["GET", "HEAD"]
    description = "List of allowed methods (e.g. 'GET, HEAD') for aws cloudfront"
}

variable "query_string" {
    default = false
}
