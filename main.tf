module "lambda_functions" {
  source = "./modules/lambda-functions"

  function_configurations = [
    {
      function_name   = "function1"
      handler         = "function1.lambda_handler"
      runtime         = "python3.8"
      code_directory  = "function1"
      description = "My first Lambda function"
      subnet_ids    = ["subnet-0d0d0724f07cc3b62"]
      security_group_ids = ["sg-0beedabf57aff77b0"]
      timeout     = 10
      role = "arn:aws:iam::558940753150:role/lambda_custom_role"
      memory_size        = 128
    }
  ]
}


output "function1_arn" {
  value = module.lambda_functions.lambda_functions["function1"].arn
}

