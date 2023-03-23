variable "function_configurations" {
  type = list(object({
    function_name   = string
    handler         = string
    runtime         = string
    code_directory  = string
    role = string
    timeout = number
    memory_size = number
  }))
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}
