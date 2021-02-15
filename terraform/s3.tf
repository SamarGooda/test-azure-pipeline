# resource "aws_s3_bucket" "taas-dev-bucket" {
#   bucket = "taas-dev-bucket"

#   tags = {
#     Name        = "taas-dev-bucket"
#   }
# }

# resource "aws_dynamodb_table" "terraform_locks" {
#   name         = "terraform-up-and-running-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "taas-tt-dev-bucket"
    key            = "terraform.tfstate"
    region         =  "eu-west-1"
    # Replace this with your DynamoDB table name!
    # dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
    profile = "test"
  }

}