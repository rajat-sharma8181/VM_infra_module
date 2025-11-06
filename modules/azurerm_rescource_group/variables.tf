variable "rgs" {
  type = map(object({
    rgname     = string
    rglocation = string
  }))
}
