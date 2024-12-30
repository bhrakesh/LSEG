resource "aws_security_group" "lseg" {
  name        = "lseg-sg"
  description = "Allow SSH and HTTP access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open SSH access (adjust for security)
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open HTTP access (adjust for security)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # All outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}
