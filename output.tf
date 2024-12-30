output "instance_details" {
  value = jsonencode({
    instance_id       = aws_instance.lseg.id
    public_ip         = aws_instance.lseg.public_ip
    private_ip        = aws_instance.lseg.private_ip
    availability_zone = aws_instance.lseg.availability_zone
    instance_type     = aws_instance.lseg.instance_type
  })
}
