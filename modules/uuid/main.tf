variable "keepers" {
  type = map(string)
  default = null
}
resource "random_uuid" "this" {
    keepers = var.keepers
}