# Get all components inside cluster
getAllComponents() {
    kubectl get all
}

getSecrets() {
    kubectl get secrets
}

updateConfigs() {
    kubectl apply -f mongo-secret.yaml

    # kubectl apply -f mongo.yaml
}

# Prints the related Pods, Services, Deployments and Replicasets to a specific deployment
getAllConfigsOfDeployment() {
    SELECTED_DEPLOYMENT="mongo"
    kubectl get all | grep "${SELECTED_DEPLOYMENT}"
}


# Assigns a public IP address to a service. In simple terms, it enables one to access
# the Pod via a browser. Note that the service must be of type 'LoadBalanacer', which
# signifies that it is an external service.
assignPublicIPAddressToService() {
    minikube service mongo-express-service
}