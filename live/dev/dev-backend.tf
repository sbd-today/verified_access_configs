terraform {
  backend "s3" {
    bucket = "xsdkjshfksasdfnl23547-terraform-state"
    region = "us-west-1"
    key    = "va-dev-state"
  }
}

