
# General steps:
#   1) apply the pod
#   2) apply the service


####  REDIS LEADER SETUP   ####

applyRedisLeaderDeploymentPod() {
    # Start pod from .yml file
    kubectl apply -f redis-leader-deployment.yaml

    # Get the list of all pods (in this case, check that the above-mentioned Redis pod runs as anticipated)
    kubectl get pods


    # View the logs of the 'redis-leader' pod
    kubectl logs -f deployment/redis-leader
}


applyRedisLeaderService() {
    kubectl apply -f redis-leader-service.yaml

    # Query the list of services
    kubectl get service
}



####  REDIS FOLLOWER SETUP   ####


applyRedisFollowerPods() {
    kubectl apply -f redis-follower-deployment.yaml
    kubectl get pods
}


applyRedisFollowerService() {
    kubectl apply -f redis-follower-service.yaml
    kubectl get service
}




####  FRONTEND


applyFrontendPods() {
    kubectl apply -f frontend-deployment.yaml

    # Query the list of Pods to verify that the three frontend replicas are running
    kubectl get pods -l app=guestbook -l tier=frontend
}


applyFrontendService() {
    kubectl apply -f frontend-service.yaml
    kubectl get services
}


setupFrontendDependencies() {
    applyFrontendPods
    applyFrontendService

    # forward port 8080 on your local machine to port 80 on the service
    kubectl port-forward svc/frontend 8080:80
}


scalingTests() {
    # Scale up the number of frontend Pods to 5
    kubectl scale deployment frontend --replicas=5
    kubectl get pods

    # Scale down
    kubectl scale deployment frontend --replicas=2
    kubectl get pods
}


# Deletes Pods, deployments and services
deleteAll() {
    kubectl delete deployment -l app=redis
    kubectl delete service -l app=redis
    kubectl delete deployment frontend
    kubectl delete service frontend
}