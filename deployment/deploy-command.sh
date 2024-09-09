kubectl delete deployment backend-user
kubectl delete services backend-user

kubectl delete deployment backend-feed
kubectl delete services backend-feed

kubectl delete deployment frontend
kubectl delete services frontend

kubectl delete deployment reverseproxy
kubectl delete services reverseproxy

kubectl delete service publicfrontend

kubectl get deployments 


kubectl apply -f aws-secret.yaml 
kubectl apply -f env-secret.yaml 
kubectl apply -f env-configmap.yaml 

kubectl apply -f backend-feed-deployment.yaml 
kubectl apply -f backend-feed-service.yaml 
kubectl apply -f backend-user-deployment.yaml 
kubectl apply -f backend-user-service.yaml  
kubectl apply -f frontend-deployment.yaml 
kubectl apply -f frontend-service.yaml 
kubectl apply -f reverseproxy-deployment.yaml 
kubectl apply -f reverseproxy-service.yaml 

kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend
kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy

kubectl get deployment
kubectl get services
kubectl get pods

