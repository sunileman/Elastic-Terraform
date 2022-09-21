terraform {
  required_providers {
    ec = {
      source  = "elastic/ec"
      version = "0.4.1"
    }
  }
}


provider "ec" {
  apikey = "YOUR-EC-CLOUD-API-KEY"
}


data "ec_stack" "latest" {
  version_regex = "latest"
  region        = "us-east-1"
}


resource "ec_deployment_elasticsearch_keystore" "aws_access_key" {
  deployment_id = "8567e69227bd45d1b03a9c27eda07979"
  setting_name  = "s3.client.secondary.access_key"
  value         = "xxxxx"
  as_file       = false
}


resource "ec_deployment_elasticsearch_keystore" "aws_secret_key" {
  deployment_id = "8567e69227bd45d1b03a9c27eda07979"
  setting_name  = "s3.client.secondary.secret_key"
  value         = "xxxx"
  as_file       = false
}