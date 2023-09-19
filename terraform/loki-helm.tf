resource "helm_release" "loki" {
  name       = "loki"
  namespace  = "monitoring"

  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki-distributed"
}