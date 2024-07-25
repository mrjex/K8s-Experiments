# Kubernetes Learning

In the summer of 2024, I experimented with Kubernetes with the purpose of learning the theoretical and practical aspects. I setup 6 projects provided by the official documentation and wrote my shell scripts to get hands-on experience. As I started learning about Kubernetes I realized how well-known and adapted it is accross the software development industry. As a result, I ended up discovering useful combinations that are made possible with Kubernetes and other software technologies.

![kubernetes-cluster](kubernetes-cluster.jpg)


### Project 1 - Redis

My first project involves Kubernetes components such as *Service* and *Deployment* through `.yaml` manifestations, and pertains to the *Redis* technology. For me to learn better, I wrote a few Bash scripts. Navigate to `/project-1-redis` to view the project.

### Project 2 - Nginx

Following the structure of the 1st project, I used manifestations to setup the project through Kubernetes. This project focused more on learning Pods and what distinguishes them from Docker Containers. Navigate to `/project-2-nginx` to view the project.

### Project 3 - Mongo

This project involves Mongo, which I'm familiar with due to earlier projects. The new components I used here was *Configmap* and *Secret* to store personal data in the manifestations. Also, I learned about how *Nodes* differantiate from *Pods*. Navigate to `/project-3-mongo` to view the project.

### Project 4 - EKS

This is my own experimentaiton project. As I researched how to work with AWS (Amazon Web Services) and Kubernetes at the same time, I encountered many articles about AWS EKS (Elastic Kubernetes Service). It also turned out that AWS ECR (Elastic Container Registry) only supports public docker images. Thus, I had to publish the project's docker image to Dockerhub and retrieve it via URL. Navigate to `/project-4-eks` to view the project.

### Project 5 - SQL

As I became more knowledgable with Kubernetes, I looked into more advanced components. For instance, persisting data can be done via a *Stateful* component. Navigate to `/project-5-sql` to view the project.

### Project 6 - Wordpress

As manifestations became tedious and repetitive I searched for efficiency solutions and found *Helm* and *Kustomization*. In this project I "refactor" the variables in *kustomization.yaml* to encapsulate the content of *mysql-deployment.yaml* and *wordpress-deployment.yaml*. Navigate to `/project-6-wordpress` to view the project.


## Other Knowledge Gained

Below, I have formatted my learning lessons in bullet-points:

- An open-source container management platform called Kubernetes automates the deployment, scaling, descaling, and load balancing of containers (also called a container orchestration tool)

- A **Service** component defines a policy to access the Pods --> Communication with persistent static IP address attached to a Pod

- A **Service** routes traffic across a set of Pods. Services are the abstraction that allows pods to die and replicate in Kubernetes without impacting your application

- A **Node** component is a Virtual Machine or a physical computer that serves as a worker machine in a Kubernetes cluster

- A **Pod** is a group of one or more docker containers, tied together for the purposes of administration and networking

- A **Pod** component always runs on a Node, and a Node can have multiple pods, and each Pod gets its own unique internal IP address

- **Ingress** component routes traffic into cluster, forwards flow to the Services

- **StatefulSet** component useful for applications that are intended to persist the state of data. The most common use case is databases.

- A **Cluster** is made of several nodes that contains Pods, which in turn have docker containers

- **Scaling** is accomplished by changing the number of replicas in a Deployment. Scaling out a Deployment will ensure new Pods are created and scheduled to Nodes with available resources. Scaling will increase the number of Pods to the new desired state.


#### Kubernetes CLI Tools

- **Minikube** is a command line tool that creates a 1-node virtual box to run the Pods with the objective to consume minimal resources with respect to the limited resources of the average user's computer

- **Kubectl** interacts with the Kubernetes API via a command line interface

- **Helm** is a package Manager for kubernetes

- **Kustomization** is a configuration transformation tool


### Amazon Web Services - EKS

- Amazon EKS runs the Kubernetes management infrastructure for you across multiple AWS availability zones to eliminate a single point of failure

- Easy to integrate with other AWS services (IAM, Load Balancer, EC2 Spot Instances and CloudWatch log, etc.)

- To create a cluster in the EKS service, you can do it in one of three ways: ekctl CLI, AWS Management Console, AWS CLI. After browsing the documentation I went with the eksctl command line utility because it involved the least amount of steps and was easier to automate and via shell scripts.

- AWS EC2 --> Amazon Elastic Compute Cloud --> Provides secure computing capacity in the cloud --> Allows one to launch and manage virtual machines in the cloud

- Since I used AWS EC2 in the previous Real Estate project with the Flask server and ML prediction (link here), I decided to use AWS Fargate instead. If I would go with the EC2-approach, I would be able to manage the nodes manually via the AWS UI. The benefits with Fargate is A, B and C.

- Fargate is a serverless option for running docker containers

- EC2 --> Provides control of the services and the infrastructure behind the scenes for the developer


##### Fargate

- Fargate --> Since the service itself takes care of the infrastructure so that you don't have to manually manage the instances/nodes, it's safe to say that going with this service is the more flexible option in the sense that unpredictable workloads won't be a problem to the dynamic infrastructure

- AWS Fargate is a serverless computing engine that allows you to run containers in the cloud without having to manage the underlying infrastructure. It is a compute engine for Amazon Elastic Container Service (ECS) that enables you to deploy and manage Docker containers without having to provision and manage the underlying servers or clusters.

- AWS Fargate --> Schedule Pods

###### Load Balancing with Fargate

- AWS Fargate & AWS ELB (Elastic Load Balancer)

- Fargate integrates with Elastic Load Balancing (ELB), which allows you to distribute traffic evenly across multiple containers. This helps ensure that your application is highly available, and that traffic is directed to healthy containers. You can use ELB to manage traffic to your containers and automatically adjust the number of containers running based on traffic patterns.