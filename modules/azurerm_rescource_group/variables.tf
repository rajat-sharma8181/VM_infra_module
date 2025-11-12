variable "rgs" {
  type = map(object({
    name        = string
    location    = string
    managed_by  = optional(string)
<<<<<<< HEAD
    tags = optional(map(string))
=======
    environment = optional(string)
>>>>>>> origin/main
  }))
}
