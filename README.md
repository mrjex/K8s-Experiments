# Kubernetes Experiments 🚢

> Kubernetes experiment playground for the purpose of learning and gaining practical experience with container orchestration in cloud environments.

![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Redis](https://img.shields.io/badge/redis-%23DD0031.svg?style=for-the-badge&logo=redis&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![WordPress](https://img.shields.io/badge/WordPress-%23117AC9.svg?style=for-the-badge&logo=WordPress&logoColor=white)
![Helm](https://img.shields.io/badge/helm-%230F1689.svg?style=for-the-badge&logo=helm&logoColor=white)

In the summer of 2024, I experimented with Kubernetes with the purpose of learning the theoretical and practical aspects. I setup 6 projects and wrote my shell scripts to get hands-on experience.

![kubernetes-cluster](kubernetes-cluster.jpg)

### Project 1 - Redis

My first project involves Kubernetes components such as *Service* and *Deployment* through `.yaml` manifestations, and pertains to the *Redis* technology. For me to learn better, I wrote a few Bash scripts. Navigate to `/project-1-redis` to view the project.

### Project 2 - Nginx

Following the structure of the 1st project, I used manifestations to setup the project through Kubernetes. This project focused more on learning Pods and what distinguishes them from Docker Containers. Navigate to `/project-2-nginx` to view the project.

### Project 3 - Mongo

This project involves Mongo, which I'm familiar with due to earlier projects. The new components I used here was *Configmap* and *Secret* to store personal data in the manifestations. Also, I learned about how *Nodes* differantiate from *Pods*. Navigate to `/project-3-mongo` to view the project.

### Project 4 - EKS

This is my experimentaiton project. As I researched how to work with AWS (Amazon Web Services) and Kubernetes at the same time, I encountered many articles about AWS EKS (Elastic Kubernetes Service).

### Project 5 - SQL

As I became more knowledgable with Kubernetes, I looked into more advanced components. For instance, persisting data can be done via a *Stateful* component. Navigate to `/project-5-sql` to view the project.

### Project 6 - Wordpress

As manifestations became tedious and repetitive I searched for efficiency solutions and found *Helm* and *Kustomization*. In this project I "refactor" the variables in *kustomization.yaml* to encapsulate the content of *mysql-deployment.yaml* and *wordpress-deployment.yaml*. Navigate to `/project-6-wordpress` to view the project.