terraform {
  backend "s3" {
    bucket         = "devops-agile-bucket"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "devops-agile-table"
  }
}
