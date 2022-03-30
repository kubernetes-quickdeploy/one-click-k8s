### Install calico ###
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

### Kubernrets Dashboard ###
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

git clone https://github.com/prometheus-operator/kube-prometheus.git

cd kube-prometheus

sleep 20

kubectl create -f manifests/setup

kubectl create -f manifests/

kubectl --namespace monitoring port-forward svc/grafana 3000

kubectl --namespace monitoring port-forward svc/prometheus-k8s 9090

kubectl --namespace monitoring port-forward svc/alertmanager-main 9093

