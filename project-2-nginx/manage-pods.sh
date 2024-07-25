startCluster() {
    minikube start
    minikube status
}


manageNginxDeployment() {

    # Create a deployment named 'nginxdepl' using the latest version of the docker image 'nginx'
    kubectl create deployment nginx-depl --image=nginx


    # Edit the deployment's configuration .yml file via VIM
    # kubectl edit deployment nginx-depl
}


manageMongoDeployment() {
    kubectl create deployment mongo-depl --image=mongo

    kubectl logs -f deployment/mongo-depl

    kubectl logs mongo-depl-887485654-jfzg7
}


# Delete the deployment named 'mongo-depl'
deleteDeployment() {
    kubectl delete deployment mongo-depl
}


# Deletes the application (or dependencies) of the configurations to the Minikube cluster
deleteKubernetesConfigs() {
    kubectl delete -f nginx-service.yaml
    kubectl delete -f nginx-service.yaml
}



# Enters the shell of a given Pod. The 1st parameter is the Pod
enterContainerShell() {
    kubectl exec -ti ${POD_NAME} -- bash
}


applyConfigurationFile() {
    kubectl apply -f "${CONFIG_FILE_PATH}"
}


outputDeploymentResultInFile() {
    kubectl get deployment nginx-deployment -o yaml > "${OUTPUT_FILE}"
}



###   VARIABLE CONFIGURATIONS   ###

POD_NAME="mongo-depl-887485654-jfzg7"
CONFIG_FILE_PATH="nginx-deployment.yaml" # Path to the .yaml file to apply
OUTPUT_FILE="nginx-deployment-result.yaml"


###   FUNCTIONS   ###

# enterContainerShell "${POD_NAME}"
# applyConfigurationFile "${CONFIG_FILE_PATH}"
outputDeploymentResultInFile "${OUTPUT_FILE}"