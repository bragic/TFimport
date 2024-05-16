resource "aws_security_group" "demo-sg-load-balancer" {
  description = "Allow HTTP into ALB"
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = null
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]
  ingress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = null
      from_port        = 80
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 80
    },
  ]
  name        = "demo-sg-load-balancer"
  name_prefix = null
  tags = {
    "Name" = "demo-sg-load-balancer"
  }
  tags_all = {
    "Name" = "demo-sg-load-balancer"
  }
  vpc_id = "vpc-02a78e4beaf9b6420"

  lifecycle {
    create_before_destroy = true
  }
}


