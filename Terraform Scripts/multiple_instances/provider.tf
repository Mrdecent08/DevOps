provider "aws" {
    region = "us-east-1"
    # To specify credentials using a file path
    # shared_credentials_files = "/home/ubuntu/.aws/creds"
    secret_key = ""
    access_key = ""
    profile = "customerProfile"
}