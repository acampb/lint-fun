variable "environment" {
  type = string
  default = "prod"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "tags" {
  type = map(any)
  default = {
    Application = "Awesome Application"
    Owner       = "user@contoso.com"
    Department  = "IT"
  }
}