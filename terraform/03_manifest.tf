resource "kubectl_manifest" "test" {
    yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: express-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: express-sample
  template:
    metadata:
      labels:
        app: express-sample
    spec:
      containers:
        - name: express sample
          image: elsiedev/expess:latest
          ports:
            - containerPort: 3000

YAML
}