 resource "aws_subnet" "subnet-1" {
   vpc_id            = aws_vpc.edu-vpc.id
   cidr_block        = "10.0.1.0/24"
   availability_zone = "ap-south-1a"

   tags = {
     Name = "edu-subnet"
   }
 }