resource "aws_s3_bucket" "b" {
  bucket = "mama-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
