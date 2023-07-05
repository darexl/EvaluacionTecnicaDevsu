# Evaluación Técnica Devsu

## Demo DevOps - Java

This is a simple application to be used in the technical test of DevOps.

### IMPORTANT NOTES

- The terraform file has been created, due to security reasons the key file can't be uploaded to a public repository.
- URLs of the Endpoints:
  - API/USERS -> http://35.222.31.116/api/users
  - SWAGGER UI -> http://35.222.31.116/api/swagger-ui/index.html

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

# Verify Connection
