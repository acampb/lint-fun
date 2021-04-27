variable "environment" {
  type = string
  description = "a description"
  default = "prod"
}

variable "location" {
  type    = string
  description = "a description"
  default = "East US"
}

variable "tags" {
  type = map(any)
  description = "a description"
  default = {
    Application = "Awesome Application"
    Owner       = "user@contoso.com"
    Department  = "IT"
  }
}