resource "aws_instance" "lseg" {
  ami           = "ami-0e9085e60087ce171" 
  instance_type = "t2.micro"
  key_name      = "test-key"   

  vpc_security_group_ids = [aws_security_group.lseg.id]

  tags = {
    Name = "lseg-instance"
  }
}
