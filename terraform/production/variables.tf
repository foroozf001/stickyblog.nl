# Input Variables
variable "ami" {
  description = "AMI"
  type = string
}

variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "allowed_ips" {
  description = "my home ip address"
  type        = list(string)
}

variable "tags" {
  description = "service tags"
  type        = map(string)
}