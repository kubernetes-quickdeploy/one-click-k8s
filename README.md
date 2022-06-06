# One click-k8s
**Welcome to 1 click Kubernetes World** , Lets take a sneek peak on how we can install Kubernetes multi-master cluster using Shell .


<img width="36" alt="kube" src="https://user-images.githubusercontent.com/99710234/154669206-f2927d33-db97-43ac-b8e5-1340692767d6.png"> <img width="37" alt="docker" src="https://user-images.githubusercontent.com/99710234/154669208-eeab2758-d86d-438b-a566-071690820a6a.png"> <img width="109" alt="flannel" src="https://user-images.githubusercontent.com/99710234/154669213-e7153a7e-14b8-4959-8761-9a300348f074.png">

______________________________________________________________________________________________

**We are building the Kubernetes cluster on basis of following compeonents**

1) Ubuntu server 20.04 LTS Versions 
2) Containerd as runtime
3) Kubernetes orchestration of course :)
4) Kubernetes Dashboard
5) Flanneld for Networking
6) Calico for network policy management 
7) Prometheus Monitoring
8) Grafana for Metrics

**Pre-Requesties**

Ubuntu Server image 20.04 for master and worker nodes .
https://releases.ubuntu.com/20.04/ubuntu-20.04.4-live-server-amd64.iso

Get your server's ready with unique ip and set hostnames as specified (or as your wish) .
 * k8s-control1.example.com
 * k8s-control2.example.com
 * k8s-worker1.example.com
 * k8s-worker2.example.com
 
  ** Make sure interenet is accesibe to all the systems's .
  
  **Instaltaion Steps**

  **  Download Git Deploy folder to all four instance 
  sudo wget https://github.com/kubernetes-quickdeploy/one-click-k8s/archive/refs/heads/main.zip
  
  ** Unzip the downloaded 
  unzip main.zip
  
  ** assign executable permission to deploy folder
  chmod +x /one-click-k8s-main/deploy/*

**  Run k8s-core.sh script on all four nodes both on control node and worker node .
     ./k8s-core.sh
**  Run k8s-controlplane.sh script on two control nodes
       #./k8s-controlplane.sh
     Example kubeadm join commands:
        For control-plane nodes:
        sudo kubeadm join --discovery-token abcdef.1234567890abcdef --discovery-token-ca-cert-hash sha256:1234..cdef --control-plane 1.2.3.4:6443
 **  Run output of token using kubeadm join command in worker nodes .
     Example kubeadm join commands:
          For worker nodes
        sudo kubeadm join --discovery-token abcdef.1234567890abcdef --discovery-token-ca-cert-hash sha256:1234..cdef <IP-ADDRESS>:6443
 **  Once Control plane and worker nodes are in ready state 
     Kubectl get nodes 
 **  Run k8s-pod-stack.sh to install Calico, Kuberenetes dashboard , Prometheus , Grafana 
    > ./k8s-pod-stack.sh
   
#####  **ALL SET , YOU HAVE WORKING KUBERENETES CLUSTER WITH MULTI-NODE CONTROL PLAN** #####

 
 
  



 
