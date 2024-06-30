variable "filename"{
        default= "/home/ubuntu/terraform-course/terraform-variables/devops-automated.txt"

}

variable "content" {
default = "Autogenrated from a variable"
}
variable "name" {
}

variable "content_map" {
type = map
default = {
"content1" = " This is content 1"
"content2" = "This is content 2"
}
}

variable "file_list" {
type= list
default =["/home/ubuntu/terraform-course/terraform-variables/file_1.txt","/home/ubuntu/terraform-course/terraform-variables/file_2.txt"]
}

variable "aws_ec2_object" {
 type = object({
 name = string
 instances = number
 keys = list(string)
 ami = string
})

default = {
   name = "test-ec2_instance"
   instances = 4
   keys = ["key1.pem","key2.pem"]
   ami = "ubuntu-agah"
}
}

variable "no" {}
