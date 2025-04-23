variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t3.micro"
}

variable "enviroment" {
  description = "The environment for the ec2 instance"
  type        = string
}

variable "instance_tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
}
