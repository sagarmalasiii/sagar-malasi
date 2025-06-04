provider "aws" {
  region = var.aws_region
}

# S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "MyS3Bucket"
    Environment = var.environment
  }
}

# EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type


  tags = {
    Name        = "MyEC2Instance"
    Environment = var.environment
  }
}
