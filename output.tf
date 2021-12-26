output "aws_account_ID" {
  value = data.aws_caller_identity.current.account_id
}

output "user_ID" {
  value = data.aws_caller_identity.current.user_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "private_ip" {
  value = aws_instance.net_test.private_ip
}

output "aws_region" {
  value = data.aws_region.current.name
}

output "private_subnet" {
  value = aws_instance.net_test.subnet_id
}

