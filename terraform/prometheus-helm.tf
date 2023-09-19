resource "helm_release" "prom" {
  name       = "prom"
  namespace  = "monitoring"
  create_namespace = true

  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"

values = [
    file("./values/prom-values.yaml")
  ]
}