## Usage

### Please copy paste below code

```hcl id="f7ks3e"
module "ns-demo" {
  source = "farrukh90/ns/kubernetes"

  name     = "demo"
  max_pods = 100

  annotations = {
    mylabel = "label-value"
  }

  labels = {
    mylabel = "label-value"
  }
}
```

### Pod Limit

This module automatically creates a Kubernetes ResourceQuota for each namespace created by the module.

Each namespace is limited to a maximum of **100 pods**. Kubernetes will reject attempts to create additional pods once the limit of 100 pods has been reached.
ContainerLimit = {
  cpu    = "500m"
  memory = "1024Mi"
}
 PodLimit {
    cpu    = "500m"
    memory = "1024Mi"
  }
 PVCLimit {
    storage = "2G"
 }

### Run

```bash id="eztjfs"
terraform init
terraform apply
```

### Verify

```bash id="cnyhtg"
kubectl get resourcequota -n demo
```



