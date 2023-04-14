resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_role" "role" {
  name               = "dummy_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "*"
        Effect = "Allow"
        Sid    = ""
        Principal = "*"
      },
    ]
  })
}


resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.role.nam
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_iam_instance_profile" "demo-profile" {
  name = "demo-profile"
  role = aws_iam_role.role.name
}