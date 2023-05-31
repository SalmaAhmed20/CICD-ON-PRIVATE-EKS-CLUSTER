data "aws_ssm_parameter" "access_key" {
  name = "access_key"
}

data "aws_ssm_parameter" "secret_key" {
  name = "secret_access_key"
  with_decryption = true
}
data "aws_ssm_parameter" "dockeruser" {
  name = "dockeruser"
}

data "aws_ssm_parameter" "dockerpass" {
  name = "dockerpass"
  with_decryption = true
}
