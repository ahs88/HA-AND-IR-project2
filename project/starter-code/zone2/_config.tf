terraform {
   backend "s3" {
     bucket = "udacity-tf-ahs-west"
     key    = "terraform/terraform.tfstate"
     region = "us-west-1"
   }
 }

 provider "aws" {
   region = "us-west-1"
   #profile = "default"
  profile="ahs-udacity"
  shared_config_files      = ["/Users/akshath/.aws/config"]
  shared_credentials_files = ["/Users/akshath/.aws/credentials"]     
   default_tags {
     tags = local.tags
   }
 }