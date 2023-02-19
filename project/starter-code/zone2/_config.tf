terraform {
   backend "s3" {
     bucket = "udacity-tf-ahs"
     key    = "terraform/terraform.tfstate"
     region = "us-east-2"
   }
 }

 provider "aws" {
  region = "us-west-1"
  profile="ahs-udacity"
  shared_config_files      = ["/home/cloudshell-user/.aws/config"]
  shared_credentials_files = ["/home/cloudshell-user/.aws/credentials"]   
   default_tags {
     tags = local.tags
   }
 }
