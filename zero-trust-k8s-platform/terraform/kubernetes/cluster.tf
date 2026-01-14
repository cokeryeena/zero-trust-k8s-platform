resource "aws_eks_cluster" "k8s_cluster" {
  name     = "zero-trust-cluster"
  role_arn = aws_iam_role.k8s_role.arn
  ...
}
