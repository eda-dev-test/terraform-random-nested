variable "length" {
    type = number
    default = 12
}

locals {
  min_len = var.length >= 12 ? var.length : 12
}

resource "random_password" "this" {
    min_lower = 3
    min_numeric = 3
    min_special = 3
    min_upper = 3
    length = local.min_len
}

output "this" {
    value = random_password.this
}