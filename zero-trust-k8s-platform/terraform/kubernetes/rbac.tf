resource "kubernetes_role" "team_role" {
  metadata {
    name      = "team-role"
    namespace = "team-alpha"
  }
  rules {
    api_groups = ["*"]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch", "create", "update", "delete"]
  }
}
