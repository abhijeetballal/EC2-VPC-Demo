resource "aws_instance" "web-server-instance1" {
   ami               = "ami-0451f2687182e0411"
   instance_type     = "t3.micro"
   availability_zone = "ap-south-1c"
   key_name          = "terraform-demo"
depends_on                = [aws_eip.one]
   network_interface {
     device_index         = 0
     network_interface_id = aws_network_interface.web-server-nic.id
   }

   user_data = <<-EOF
                 #!/bin/bash
                 sudo yum update -y
                 sudo yum install httpd -y
                 sudo systemctl start httpd
                 sudo bash -c 'echo Learning Terraform on AWS !! > /var/www/html/index.html'
                 EOF
   tags = {
     Name = "web-server"
   }
 }