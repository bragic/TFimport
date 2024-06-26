# resource "aws_instance" "LinuxServer01" {
#   ami                        = "ami-07caf09b362be10b8"
#   availability_zone          = "us-east-1a"
#   instance_type              = "t2.micro"
#   key_name                   = null
#   placement_partition_number = 0
#   vpc_security_group_ids = [
#     "sg-05d65d831fd2b865a",
#   ]
#   subnet_id = "subnet-09ac8f251dbe33c6f"
#   tags = {
#     "Name" = "LinuxServer01"
#   }
#   tags_all = {
#     "Name" = "LinuxServer01"
#   }

#   # vpc_security_group_ids = [
#   #   "default",
#   # ]
# }

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "terraform-state-bg"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}