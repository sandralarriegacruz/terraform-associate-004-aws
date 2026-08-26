variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports to enable in Security Group"
  default     = [80, 443, 8080]
}
