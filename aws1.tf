provider "aws" {
  region = "us-east-2"
  access_key = "AKIA4QC7SVN4HCVA376X"
  secret_key = "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"
}

resource "aws_instance" "web" {
    ami           = "ami-08814ae27e6f9262d"
    describe-instance-types = "64-bit"
    instance_type = "t2.micro"
    key_name      = "myawskey"
    associate_public_ip_address = "true"
    tags {
        Name = "Terraform EC2"
    }

}
