
# CICD-ON-PRIVATE-EKS-CLUSTER
![EKS drawio](https://github.com/SalmaAhmed20/CICD-ON-PRIVATE-EKS-CLUSTER/assets/64385957/b1b7fa9e-a255-421c-a3ca-66e9dbb13945)

## Terraform 
 1- Provision Infrastructure on AWS
 -
  - Networks
    - VPC (Virtual Private Network)
    - 1 Public Subnet
    - 2 Private Subnet
    - Internat Gateway
    - NAT Gateway with Attached Elastic IP
    - 2 Route Tables and Routes
  - EKS (Elastic Kubernetes Service)
    - IAM Roles
    - Managed Node group
  - EC2 Instances (Bastion Host)
    - #### Configure By userdata script
      + kubectl to access Cluster
      + AWS CLI and COnfigure It
      + Docker 
      + Java and git "it will be jenkins slave"
  - Security groups
## Provision
```bash
  terraform apply
```
## Ansible 
 2- After Provisioning using Terraform you will find Public IP of Machine in inventory file 
 --
  - Tasks About Configure EKS Cluster in kubeconfig
  - Run jenkins on cluster using deployment files in k8sfiles folder 
```bash
  ansible-playbook -i inventory playbook.yaml  
```
![Screenshot from 2023-05-31 06-11-27](https://github.com/SalmaAhmed20/CICD-ON-PRIVATE-EKS-CLUSTER/assets/64385957/d30b2059-699c-448c-ae0e-79cc94ed50af)

## Jenkins
3- After The Jenkins pod is ready and running
- ssh to bastion
```bash
  kubectl get all -n jenkins  
``` 
![image](https://github.com/SalmaAhmed20/CICD-ON-PRIVATE-EKS-CLUSTER/assets/64385957/35add3db-7d7b-4fae-8d98-8511e81bbf25)
go to external ip of service and setup your jenkins
- get intial Password
```bash
  kubectl exec -it -n jenkins < Pod name > cat /var/lib/jenkins/secrets/initialAdminPassword
``` 
- Add Neccessary credentials
   - github 
   - Dockerhub
![Screenshot from 2023-05-31 11-11-14](https://github.com/SalmaAhmed20/CICD-ON-PRIVATE-EKS-CLUSTER/assets/64385957/2278d0d5-3edc-4fa7-85bd-4631a34bd6e1)
- Add your Bastion host as slave node
![Screenshot from 2023-05-31 11-09-07](https://github.com/SalmaAhmed20/CICD-ON-PRIVATE-EKS-CLUSTER/assets/64385957/c36d9ada-fecc-482a-930a-af2edf81afc3)
- Create Pipeline 
 ![Screenshot from 2023-05-31 00-47-50](https://github.com/SalmaAhmed20/CICD-ON-PRIVATE-EKS-CLUSTER/assets/64385957/956487b9-ea2d-471e-b1d0-1a2d8924eada)
 
 - Run it 
 ![Screenshot from 2023-05-31 06-07-38](https://github.com/SalmaAhmed20/CICD-ON-PRIVATE-EKS-CLUSTER/assets/64385957/cf597e0e-c8d0-40c5-a94f-d0fe78585ee1)


 
 
 - 
