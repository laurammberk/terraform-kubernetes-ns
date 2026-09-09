resource "kubernetes_namespace_v1" "this" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name

  }
}
resource "kubernetes_resource_quota_v1" "this" {
  metadata {
    name      = "pod-quota"
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }

  spec {
    hard = {
      pods = var.pods
    }
    scopes = [ "BestEffort" ]
  }
}

resource "kubernetes_limit_range" "this" {
  metadata {
    name      = "limit_range"
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }
  spec {
    limit {
      type = "Pod"
      max = var.PodLimit
    }
    limit {
      type = "PersistentVolumeClaim"
      max = var.PVCLimit
    }
    limit {
      type = "Container"
      max = var.ContainerLimit
    }
  }
}
