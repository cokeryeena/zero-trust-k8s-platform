resource "kubernetes_namespace" "team_alpha" {
  metadata {
    name = "team-alpha"
  }
}

resource "kubernetes_namespace" "team_beta" {
  metadata {
    name = "team-beta"
  }
}
