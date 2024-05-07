resource "aws_sqs_queue" "my_sqs_queue" {
  name = "my_sqs_queue"
  tags = {
    Name = "temporary"
  }
}

resource "aws_sns_topic_subscription" "my_topic_subscription" {
  topic_arn = aws_sns_topic.my_sns_topic.arn
  protocol = "sqs"
  endpoint = aws_sqs_queue.my_sqs_queue.arn
}