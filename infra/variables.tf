variable "prefix" {
  default = "clojureapp"
}

variable "apps" {
  type    = list(string)
  default = ["frontend", "newsfeed", "quotes"]
}

variable "project" {
  default = "clojure-app"
}

variable "contact" {
  default = "email@petclinic.link"
}

variable "dns_zone_name" {
  description = "Domain name"
  default     = "petclinic.link"
}

variable "subdomain" {
  description = "Subdomain per environment"
  type        = map(string)
  default = {
    production = "api"
    dev        = "api.dev"
  }
}
