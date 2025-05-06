

# eksctl create cluster --name test-cluster --version 1.30 --region eu-north-1 --nodegroup-name linux-nodes --node-type t2.micro --nodes 2




# Initiate cluster using EKS service and EC2 instances
initiateCluster1() {
    eksctl create cluster --name my-cluster --region eu-north-1     # Create cluster

    # Check nods and pods
    kubectl get nodes -o wide
    kubectl get pods -A -o wide

    eksctl delete cluster --name my-cluster --region eu-north-1     # Delete cluster
}


