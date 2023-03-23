variable "function_configurations" {
  type = list(object({
    function_name   = string
    handler         = string
    runtime         = string
    code_directory  = string
    role = string
    timeout = number
    subnet_ids   = list(string)
    security_group_ids = list(string)
    memory_size = number
  }))
}

variable "subnet_ids" {
  type    = map(string)
}

variable "security_group_ids" {
  type    = map(string)
}

