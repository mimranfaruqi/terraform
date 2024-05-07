resource "aws_s3_bucket" "my-terra-bucket" {
  bucket = "my-terra-bucket"
  tags = {
    Name = "temporary"
  }
}