variable "aws_region" {
  description = "AWS region to create resources"
  type        = string
  default     = "ap-south-1"
}
variable "ami_id" {
  description = "AMI_ID"
  type        = string
  default     = "ami-011c99152163a87ae"
}


variable "ec2_count" {
  description = "Count of ec2 instances we needed to deploy"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}
