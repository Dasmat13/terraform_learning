resource "aws_iam_user" "admin-user" {
    name = "dasmat"
    tags = {
      Desciption = "Teachnical team leader"
    }
}