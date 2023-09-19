resource "helm_release" "promtail" {
  name       = "promtail"
  namespace  = "monitoring"

  repository = "https://grafana.github.io/helm-charts"
  chart      = "promtail"

  depends_on = [helm_release.prom]

  values = [
    file("./values/promtail-values.yaml")
  ]
}