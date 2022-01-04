resource "aws_instance" "ec2" {
    ami ="ami-052cef05d01020f1d"
    instance_type = "t2.micro"
    count = 3
    key_name = "chinna"
    security_groups =   [aws_security_group.sg.name]
   
    availability_zone = var.availability_zones[count.index]
    
    tags = {
        Name = "ec2 -${count.index}"
    }
}    