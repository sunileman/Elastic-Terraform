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
  deployment_id = "YOUR-DEPLOYMENT-ID"
  setting_name  = "s3.client.secondary.access_key"
  value         = "YOUR-AWS-ACCESS-KEY"
  as_file       = false
}


resource "ec_deployment_elasticsearch_keystore" "aws_secret_key" {
  deployment_id = "YOUR-DEPLOYMENT-ID"
  setting_name  = "s3.client.secondary.secret_key"
  value         = "YOUR-AWS-SECRET-KEY"
  as_file       = false
}
