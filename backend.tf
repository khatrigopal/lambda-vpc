### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "lambda-vpc.tfstate"
    region = "us-east-1"
  }
}
