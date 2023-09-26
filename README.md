# DevOps Task:

## Deploying Node.js app:

 - To run the app locally :
```
cd myapp
npm init
npm install express
node app.js
```
## Setup a Kubernetes cluster using KinD:

1. Write a bash script that deploys a kind cluster locally.
    - The bash script is named as cluster.sh
    - save the script , and make it executable by running ```chmod +x cluster.sh``` and then run it.
      
2. Download the kubeconfig for the cluster

## Deploy a sample Node.js app with Terraform:

1. When kind is up and running, dockerize a simple hello express and deploy to dockerhub.

   ![Dockerhub](https://github.com/elsie-dev/ignite/blob/main/Screenshot%20from%202023-09-26%2009-38-33.png)

2.  Create a Kuberenetes deployment manifest
    - The manifest file is [deployment.yaml](https://github.com/elsie-dev/ignite/blob/main/deployment.yaml)
      
3. Write a terraform code to deploy the kubectl manifest to the kind cluster
   - The terraform code is included in the terraform folder.

## Bonus:
### HELM CONFIGURATION (Work in progress)
