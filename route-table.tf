resource "aws_route_table" "edu-route-table" {
vpc_id = aws_vpc.edu-vpc.id
route {
cidr_block = "0.0.0.0/0"
# this means all traffic is allowed
     gateway_id = aws_internet_gateway.gw.id
   }
   route {
     ipv6_cidr_block = "::/0"
     gateway_id      = aws_internet_gateway.gw.id
}
 tags = {
     Name = "edureka"
   }
 }