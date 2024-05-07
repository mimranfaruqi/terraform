resource "aws_sns_topic" "my_sns_topic" {
  name = "my_sns_topic"
  tags = {
    Name = "temporary"
  }
}