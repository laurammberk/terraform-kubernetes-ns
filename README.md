## Usage
### Please copy paste below code

```
module  ns-demo {
  source      = "farrukh90/ns/kubernetes"

  name        = "demo-ns"

  annotations  = {
    mylabel = "label-value"
  }

  labels       = {
    mylabel = "label-value"
  }

}
```
### Pod limit
```
This module automatically creates a Kubernetes ResourceQuota for each namespace created by the module.

Each namespace is limited to a maximum of 100 pods. Kubernetes will reject attempts to create additional pods once the limit of 100 pods has been reached.
```


### Run
```
terraform init
terraform apply
```