# Evaluación Técnica Devsu

## Demo DevOps - Java

This is a simple application to be used in the technical test of DevOps.

### IMPORTANT NOTES!

- The terraform file has been created, due to security reasons the key file can't be uploaded to a public repository.
- URLs of the Endpoints:
  - API/USERS -> http://35.222.31.116/api/users
  - SWAGGER UI -> http://35.222.31.116/api/swagger-ui/index.html
- URL of the DockerHub Repository:
  - https://hub.docker.com/r/dgleon/evaluacion-tecnica

# Steps Done!
### 1. Run and Create .jar file

The application was executed with its database and .jar file to create the Docker image.

### 2. GitHub

Upload to a new repository in GitHub.

### 3. Dockerization

The Dockerfile was created to package the .jar application and its dependencies into a Docker image. The following considerations were taken into account:
   - Environment variables
   - Run user
   - Port configuration
   - Health check setup

### 4. GCP (Google Cloud Platform)

Connect our pipeline and Docker with GCP services using Kubernetes Engine and Loading Balance.

### 5. Using OpenLens

The client could verify the cluster is working correctly by visualizing the Nodes, Pods, Deployments, ConfigMaps, Services, Endpoints, etc.


# Pipeline Process
![PipelineProcessGCP](https://github.com/darexl/EvaluacionTecnicaDevsu/assets/26086022/14b5fee6-718a-4674-9041-fe9df65e6e24)

# Verify Connections Screenshots
Docker Hub Repository
<img width="1285" alt="DockerHub Repo" src="https://github.com/darexl/EvaluacionTecnicaDevsu/assets/26086022/57ef7d53-f423-4186-8263-3cc9554b354f">

Google Cloud Platform
- Kubernetes Engine
  <img width="1440" alt="Kubernetes Engine GCP" src="https://github.com/darexl/EvaluacionTecnicaDevsu/assets/26086022/290d2152-5c90-4e89-b280-7b35527cdf63">

- Load Balance
  <img width="1440" alt="Load Balance" src="https://github.com/darexl/EvaluacionTecnicaDevsu/assets/26086022/a5db4ef9-8c3f-46c0-8c53-e5f7af3adabc">

OpenLens
<img width="1440" alt="Open Lens Overview" src="https://github.com/darexl/EvaluacionTecnicaDevsu/assets/26086022/e107f577-8350-41a8-b349-997e8476237e">
