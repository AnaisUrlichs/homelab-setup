resource "helm_release" "tempo" {
  name       = "tempo"
  namespace  = "monitoring"

  repository = "https://grafana.github.io/helm-charts"
  chart      = "tempo-distributed"

  depends_on = [helm_release.prom]
}