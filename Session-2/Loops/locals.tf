locals {
    ami_id ="ami-03265a0778a880afb"
    key_public = file("${path.module}/devops.pub")
}



# locals is also a type of variables which is having key value pair 
# and having extra capabilities like expressions and functions which will run at run time and provide the value