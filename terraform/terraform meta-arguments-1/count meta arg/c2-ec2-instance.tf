# Create EC2 I nstance
resource "aws_instance" "web" {
    ami           = "ami-047a51fa2771081e"  # Amazon Linux
    instance_type = "t2.micro"
    count         = 3    # Meta Argument
    tags  = {
        #"Name" = "Web" 
        "Name" = "Web-${count.index}"     # will give names as web-0,web-1,web-2
    } 
}