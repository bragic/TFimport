resource "aws_security_group" "bg-load-balancer" {
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
  name        = "bg-load-balancer"
  name_prefix = null
  tags = {
    "Name" = "bg-load-balancer"
  }
  tags_all = {
    "Name" = "bg-load-balancer"
  }
  vpc_id = "vpc-02a78e4beaf9b6420"

  lifecycle {
    create_before_destroy = true
  }
}

########################################################

import {
  to = aws_security_group.launch-wizard-1
  id = "sg-06663781b1709ebfa"
}

resource "aws_security_group" "launch-wizard-1" {
  name        = "launch-wizard-1"
  description = "launch-wizard-1 created 2024-05-04T22:34:43.314Z"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]

  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-02a78e4beaf9b6420"
}

######################################################

import {
  to = aws_security_group.launch-wizard-2
  id = "sg-019b7b36bc19ac0f2"
}

resource "aws_security_group" "launch-wizard-2" {
  name        = "launch-wizard-2"
  description = "launch-wizard-2 created 2024-05-05T02:19:27.492Z"
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
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    },
  ]
  name_prefix = null
  tags        = {}
  tags_all    = {}
  vpc_id      = "vpc-02a78e4beaf9b6420"
}

######################################################


import {
  to = aws_security_group.launch-wizard-3
  id = "sg-0a5ad2766180863c9"
}

resource "aws_security_group" "launch-wizard-3" {
  name        = "launch-wizard-3"
  description = "launch-wizard-3 created 2024-05-07T02:14:22.333Z"
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
  name_prefix = null
  tags        = {}
  tags_all    = {}
  vpc_id      = "vpc-02a78e4beaf9b6420"
}

