# Default VPC data source
data "aws_vpc" "default" {
  default = true
}

# Dynamic block example (dynamic "ingress") iterating over var.ingress_ports
resource "aws_security_group" "web_sg" {
  name        = "lab07-dynamic-sg"
  description = "Security Group constructed with dynamic blocks"
  vpc_id      = data.aws_vpc.default.id

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      description = "Allow port ${ingress.value}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
