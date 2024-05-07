variable "region" {
  type        = string
  description = "The region in which the resources will be created"
  default     = "eu-west-1"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "aws_server" {
  type        = string
  description = "The AWS server configuration"
  default     = "http://localhost:4566"
  sensitive = true
}

variable "aws_skip_credentials_validation" {
  type        = bool
  description = "Skip AWS credentials validation"
  default     = false
}