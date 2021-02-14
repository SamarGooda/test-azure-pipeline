

resource "aws_s3_bucket" "b" {
  bucket = "mysamar1234-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
