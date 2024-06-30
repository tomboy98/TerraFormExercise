resource "local_file" "devops" {
  content  = var.content_map["content1"]
  filename = var.file_list[0]
}

resource "local_file" "devops-var" {
 filename = var.file_list[1]
 content  = var.content_map["content2"]
}

output "name" {
value = var.name
}

output "aws_ec2_instances"{
value = var.aws_ec2_object.instances
}

output "tf_students"{
value = var.no
}
