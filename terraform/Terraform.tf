terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.27"
    }
  }

  required_version = ">=0.14.9"
    
    backend "s3" {
        bucket = "eksrestore2"
        region = "east-us-2"
    }

}

provider "aws" {
  version = "~>3.0"
  region  = "east-us-2"
}


resource "aws_s3_bucket" "s3Bucket" {
     bucket = "eksrestore1"
     acl       = "public-read"

     policy  = <<EOF
{
     "id" : "MakePublic",
   "version" : "2012-10-17",
   "statement" : [
      {
         "action" : [
             "s3:GetObject"
          ],
         "effect" : "Allow",
         "resource" : "arn:aws:s3:::[BUCKET_NAME_HERE]/*",
         "principal" : "*"
      }
    ]
  }
EOF


}