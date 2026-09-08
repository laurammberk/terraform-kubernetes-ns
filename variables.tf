variable "name" {
  description = "Namespace name in k8s"
  type        = string
  default     = "demo"
}

variable "labels" {
  description = "labels to be used in namespace"
  type        = map(string)
  default = {
    mylabel = "label-value"
  }
}

variable "annotations" {
  description = "annotations to be used in namespace"
  type        = map(string)
  default = {
    mylabel = "label-value"
  }
}

variable pods {
  description = "Please specify the amount of pods to deploy"
  type        = number
  default     = 100
}

variable PodLimit {
  description = "Please specify pod resource limit"
  type        = map(any)
  default     = {
    cpu    = "500m"
    memory = "1024Mi"
  
  }
}

variable PVCLimit {
  description = "Please specify PersistentVolumeClaim imit"
  type        = map(any)
  default     = {
    storage = "2G"
  
  }
}

variable ContainerLimit {
  description = "Please specify Container imit"
  type        = map(any)
  default     = {
    cpu    = "500m"
    memory = "1024Mi"
  
  }
}
