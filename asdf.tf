resource "aws_instance" "demo-instance" {
   ami               = "ami-0451f2687182e0411"
   instance_type     = "t3.micro"
   vpc_security_group_ids = ["sg-093fde502a660c2ca"]
   key_name          = "terraform-demo"

   tags = {
     Name = "manual-ec2"
   }
 }