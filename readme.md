# My Project
================

created AKS from terraform 
main.tf file

terrform.tfvars contain variable valuse. 

steps :

terraform init
terraform plan
terraform apply

## Screenshots

### Screenshot 1
![Screenshot 1](![alt text](image.png))

### Screenshot 2
![Screenshot 2](![alt text](image-1.png))

### cluster created 
![Screenshot 2](![alt text](image-2.png))


## Getting Started

3 tier application with frontend , backend and database in application\demoapp :

1. build frontend and push image to dockerhub
   docker build -t frontend . 
   docker tag frontend:latest dixhap/frontend:latest
   docker push dixhap/frontend:latest
   ![Screenshot 2](![alt text](image-4.png))


2. build backend and push image to dockerhub
   docker build -t backend . 
   docker tag frontend:latest dixhap/backend:latest
   docker push dixhap/backend:latest
   ![Screenshot 2](![alt text](image-5.png))

3. build database and push image to dockerhub
   docker build -t database . 
   docker tag database:latest dixhap/database:latest
   docker push dixhap/database:latest

   ![Screenshot 2](![alt text](image-6.png))

4.  check dockerhub with images
    
    ![Screenshot 2](<img width="881" alt="image" src="https://github.com/user-attachments/assets/8ad5d490-3473-4889-8f07-4b25a3c97114">)
    
6. create helmchart
   
   ![Screenshot 2](![alt text](image-7.png))

7. create namespace and install helmchart 

   ![Screenshot 2](![alt text](image-8.png))

## Contributing

[follow these guidelines](CONTRIBUTING.md).
