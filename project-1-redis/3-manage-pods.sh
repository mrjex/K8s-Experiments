###   SETUP 3 - EXEC   ###



displayAllPods() {
    kubectl get pods
}

displayAllDeployments() {
    kubectl get deployments
}

displayDeploymentInfo() {
    kubectl describe deployment "${DEPLOYMENT_NAME}"
}

displayAllServices() {
    kubectl get services
}

displayServiceInfo() {
    kubectl describe "services/${SERVICE_NAME}"
}


# Enters the shell of a given Pod. The 1st parameter is the Pod
enterContainerShell() {
    # echo "hello ${POD_NAME}"
    kubectl exec -ti ${POD_NAME} -- bash
}


###   VARIABLE CONFIGURATIONS   ###

POD_NAME="frontend-7dc7786f46-krqzb"
DEPLOYMENT_NAME="redis-leader"
SERVICE_NAME="frontend"



###   FUNCTIONS   ###

# enterContainerShell "${POD_NAME}"
# displayDeploymentInfo "${DEPLOYMENT_NAME}"
displayServiceInfo "${SERVICE_NAME}"





# TODO - Try this command:

# kubectl get endpoints ${SERVICE_NAME}

# kubectl get pods --selector=name=nginx,type=frontend

# kubectl get nodes

# kubectl cluster-info dump

# kubectl describe node

# kubectl get node -o yaml