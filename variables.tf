variable "enviroment" {
  description = "The environment to deploy resources in"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default = "us-east-1"
}

variable "aws_profile" {
  description = "The AWS profile to use for authentication"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
}

variable "instance_tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
}
