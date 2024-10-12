variable "ami_id" {
  description = "The AMI to use. Default is ubuntu"
  default     = "ami-0e8d228ad90af673b"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  default     = "t2.micro"
  type        = string
}

variable "tags" {
  description = "a map of tags to add to all resources"
  type        = map(string)
  default = {
    Service = "lho-monitoring"
  }
}