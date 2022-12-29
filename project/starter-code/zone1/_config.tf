terraform {
   backend "s3" {
     bucket = "udacity-tf-ahs"
     key    = "terraform/terraform.tfstate"
     region = "us-east-2"
   }
 }

 provider "aws" {
  region = "us-east-2"
  profile="ahs-udacity"
  shared_config_files      = ["/Users/akshath/.aws/config"]
  shared_credentials_files = ["/Users/akshath/.aws/credentials"]   
   default_tags {
     tags = local.tags
   }
 }

 provider "aws" {
  alias  = "usw1"
  region = "us-west-1"
}