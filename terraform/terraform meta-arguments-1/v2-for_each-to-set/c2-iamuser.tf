# Create A IAM Users
# https://registery.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "myuser" {
    for_each = toset(["TJack", "TJames", "TMdhu", "TDave"])
    name     = each.key
}