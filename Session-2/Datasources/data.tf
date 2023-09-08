data "aws_ami" "ami_id"{
    most_recent = true
   owners =[973714476881]

   filter {
    name ="name"
    values = ["Centos-8-DevOps-Practice"]
   }
}


resource "aws_instance" "EC2-instance-Datasource" {
    
    ami= data.aws_ami.ami_id.id
    instance_type = "t2.micro"
    tags={
     Name ="Data Source"   
    }

}