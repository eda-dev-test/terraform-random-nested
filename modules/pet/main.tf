variable "length" {
    type = number
    default = 12
}

variable "prefix" {
    type = string
    default = "pet"
}

resource "random_pet" "this" {
    length = var.length
    prefix = var.prefix
}

output "this" {
  value = random_pet.this
}