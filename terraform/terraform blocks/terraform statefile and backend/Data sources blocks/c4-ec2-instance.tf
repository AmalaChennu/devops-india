# Create EC2 Instance - Amazon Linux
resource "aws_instance" "my-ec2-vm" {
    ami               = data.aws_ami.amzlinux.id 
    instance_type     = var.ec2_instance_type
    user_data         = file("apache-install.sh")
    vpc_security_group_ids = [aws_security_group.S.id, aws_security_group.W.id]
    tags  = {
        "Name" = "amz-linux-vm"
        #"demotag" = "refreshtest"  # Enable during step-04-05
        #"target"  = "Target-Test-1" # Enable during step-08
    }
}
/*
Enable during step-8
New VM
resource "aws_instance" "my-demo-vm" {
   ami           = data.aws_ami.amzlinux.id
   instance_type = var.instance_type
   tags = {
     "Name" = "demo-vm1"
    }
}
*/