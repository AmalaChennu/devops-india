# Define Output Values
# Attribute Reference: EC2 Instance Public IP
output "ec2_instance_publicip" {
    description = "EC2 Instance Public IP"
    value       = aws_instance.my-ec2-vm.public_ip
}
# Argument Reference: EC2 Instance Private IP
output "ec2_instance_privateip" {
    description = "EC2 Instance Private IP"
    value       = aws_instance.my-ec2-vm.private_ip 
}
# Argument Refernce: Security Group associated to EC2 Insatnce
output "ec2_security_groups" {
    description = "List Security Groups Associated With EC2 Instance"
    value       = aws_instance.my-ec2-vm.security_groups 
}
# Attribute Reference: Create Public DNS URL With http:// appended
output "ec2_publicdns" {
    description = "Public DNS URL of an EC2 Instance"
    value       = "http://${aws_instance.my-ec2-vm.public_dns}"
    # Sensitive = true    # Uncomment it during step-04 execution
}