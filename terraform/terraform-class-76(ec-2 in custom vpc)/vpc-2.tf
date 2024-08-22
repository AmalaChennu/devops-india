# Resource Block
# Resource-1: create VPC
resource "aws_vpc" "vpc-dev" {
    cidr_block = "10.0.0.0/16"
    tags {
        "Name" = "vpc-dev"
    }
}

# Resource-2: create Subnets
resource "aws_subnet" "vpc-dev-public-subnet-1" {
    vpc_id                  = aws_vpc.vpc-dev.vpc_id
    cidr_block              = "10.0.0.0/24"
    availability_zone       = ""
    map_public_ip_on_launch = true 
}

# Resource-3: Internet Gateway
resource "aws_internet-gateway" "vpc-dev-igw" {
    vpc_id = aws_vpc.vpc-dev.id 
}

# Resource-4: Create Route Table 
resource "aws_route_table" "vpc-dev-public-route-table" {
    vpc_id = aws_vpc.vpc-dev.id 
}

# Resource-5: Create Route Table in Route Table for Internet Acess
resource "aws_route" "vpc-dev-public-route" {
    route_table_id          = aws_route_table.vpc-dec-public-route-table.id 
    destination_cidr_block  = "0.0.0.0/0"
    gateway_id              = aws_internet_gateway.vpc-dev-igw.id 
}
# Resource-6: Associate the Route Table with the subnet
resource "aws_route_table_association" "vpc-dev-public-rout-table-associate" {
    route_table_id = aws_route_table.vpc-dev-public-route-table.id 
    subnet_id      = aws_subnet.vpc-dev-public-subnet-1.id
} 

# Resource-7: Create Security Group
resource "aws_security_group" "dev-vpc-sg" {
    name        = "dev-vpc-default-sg"
    description = "Dev VPC Default Security Group"
    vpc_id      = aws_vpc.vpc-dev.id 

    ingress {
        description = "Allow Port 22"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]  
    }
    ingress {
        description = "Allow Port 80"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "Allow all IP and Ports Outbound"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}    