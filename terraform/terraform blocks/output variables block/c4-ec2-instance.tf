# Create EC2 Instance 
resource "aws_instance" "my-ec2-vm" {
    ami                    = var.ec2_ami_id
    instance_type          = var.ec2_instance_type
    user_data              = file("apache-install.sh")
    vpc_security_group_ids = [aws_security_group.vpc-Secure.id, aws_security_group.HTTP.id]
    tags                   = {
        "Name" = "web"
    }
}