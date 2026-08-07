resource "kubernetes_namespace_v1" "example" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name

  }
}

