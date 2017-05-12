# jenkins
Uptech Jenkins CI stuff

### Todo. 

* Add packages to Dockerfile for builds (Or create own docker image for building)
* Add plugins.txt for Jenkins to save plugin configurations (So we don't have to mount volumes when running jenkins cloud)

### How to run Jenkins: 
** Docker service must be running on machine. **

Run this command
* -p is port forwarding for docker container 
* -v is volume mounting 
* * Mount jenkins folder, this way jenkins can store his configs on machine drive(plugins, scripts). Will be removed when plugins.txt configured. Store your job scripts with VCS.
* * Mount docker.sock, this way we could use host machine docker daemon (Docker in docker is pain, trust me).
* image docker registry path

```
docker run 
    --name jenkins  
    -p 80:8080 
    -p 50000:50000 
    -d 
    -v ${JENKINS_FOLDER}:/var/jenkins_home 
    -v /var/run/docker.sock:/var/run/docker.sock 
    uptech/jenkins
```

