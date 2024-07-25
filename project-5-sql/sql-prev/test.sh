


kubectl exec --stdin --tty mysql-6d7f5d5944-77p5l -- /bin/bash

mysql -p my-password




kubectl exec --stdin --tty mysql-6d7f5d5944-dn7x7 -- /bin/bash \
    mysql -p





# kubectl run -it --rm --image=mysql:latest --restart=Never mysql-client -- mysql -h mysql -my-password






kubectl delete deployment,svc mysql
kubectl delete pvc mysql-pv-claim
kubectl delete pv mysql-pv-volume
kubectl delete secret mysql-secret