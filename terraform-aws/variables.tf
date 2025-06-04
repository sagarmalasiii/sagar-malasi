variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "bucket112233214243"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  default     = "dev"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-02457590d33d576c3" 
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}


