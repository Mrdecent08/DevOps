resource "aws_iam_user" "sample_user" {
  # name = "Srinivas"
  count = length(var.usernames)
  name = var.usernames[count.index]
}