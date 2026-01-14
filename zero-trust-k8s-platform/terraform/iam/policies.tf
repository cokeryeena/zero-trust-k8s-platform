resource "aws_iam_policy" "k8s_policy" {
  name        = "k8s-policy"
  description = "Policy for Kubernetes access"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "eks:DescribeCluster"
        Effect = "Allow"
        Resource = "*"
      }
    ]
  })
}
