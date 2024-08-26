# Resources Block
# Resource-1: Create VPC
resource "aws_vpc" "vpc-dev" {
    cidr_block = "10.0.0.0/16"
    tags = {
        "Name" = "vpc-dev"
    }
}

# Resource-2: Create Subnets
resource "aws_subnet" "vpc-dev-public-subnet-1" {
    vpc_id                  = aws_vpc.vpc-dev.id 
    cidr_block              = "10.0.0.0/16"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true 
}

# Resource-3: Internet Gateway
resource "aws_internet_gateway" "vpc-dev-igw" {
    vpc_id = aws_vpc.vpc-dev.id 
}

# Resource-4: Create Route Table
resource "aws_route_table" "vpc-dev-public-route-table" {
    vpc_id = aws_vpc.vpc-dev.id 
}
