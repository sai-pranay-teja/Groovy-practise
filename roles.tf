resource "aws_iam_role" "role" {
  name = "test_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Effect": "Allow",
        "Action": "*",
        "Principal": {
            "Service": [
                "ecs.amazonaws.com"
            ]
}
        "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_role_policy" "policy" {
  name = "test_policy"
  role = "${aws_iam_role.role.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "demo-profile" {
  name = "demo-profile"
  role = aws_iam_role.role.name
}