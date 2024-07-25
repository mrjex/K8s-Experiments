# Uses Kustomize


startSystem() {
    # Apply all components and launch app
    kubectl apply -k ./

    # Get the browser URL where the frontend is displayed
    minikube service wordpress --url
}


stopSystem() {
    # Stop / Clear project from minikube
    kubectl delete -k ./
}