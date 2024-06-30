resource "aws_instance" "my_ec2_instance"{
        count =3
	ami ="ami-01b799c439fd5516a"
        instance_type ="t2.micro"
	tags = {
 	Name = "ash-terraform"
}
}
