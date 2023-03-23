variable "function_configurations" {
  type = list(object({
    function_name   = string
    handler         = string
    runtime         = string
    code_directory  = string
    role = string
    timeout = number
    #vpc_id = string
    #subnet_ids    = list(string)
    #security_group_ids = list(string)
    memory_size = number
  }))
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = map(list(string))
}

variable "security_group_ids" {
  type = map(list(string))
}

