resource "helm_release" "trivy-operator" {
  name       = "trivy-operator"
  namespace  = "trivy-system"
  create_namespace = true

  repository = "https://aquasecurity.github.io/helm-charts/"
  chart      = "trivy-operator"

  set {
    name  = "trivy.ignoreUnfixed"
    value = "true"
  }
}