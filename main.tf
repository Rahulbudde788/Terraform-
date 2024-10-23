provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0e0e417dfa2028266"
instance_type = "t2.medium"
key_name = "rahul2"
vpc_security_group_ids = ["sg-0bb3f9963116dfc7c"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
