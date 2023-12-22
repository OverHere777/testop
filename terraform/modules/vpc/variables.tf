variable "create_vpc" {
    type = bool
    default = true
  
}

variable "cidr_block" {
    type =  string
  
}

variable "name" {
    type =  string
}

variable "tags" {
    type = map(string)
}