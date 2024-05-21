How to Create a Simple React Application
Use the following command to set up a simple React application.

1.create-react-app react-docker
 test -the app with command npm start

2.Write a Dockerfile

3.Build the Image
        command for built the docker images -docker build -t dhundhara/docker_image01:latest . 
        
        -t option specifies the name and tag for the image.
        
        The . at the end represents the current directory.
        
        dhundhara-is user name of docker

        docker_image01 -is images name
        
4.Now, run docker images and Create a Container from the Image  

                   :> docker run -it -p 3000:3000 dhundhara/docker_react02:latest  
                   
5.Push the Image to Docker Hub

   . Register into Docker Hub 
   
   .Then, go to repositories and click on Create repository.
   
   . created your remote repository, it's time to push your image. 
   
6.you need to login Docker

       . docker login
       
7.Tag the image with your username for push image

             .docker tag dhundhara/docker_react02:latest dhundhara/react-image01  
             
             . docker push dhundhara/react-image01    
             
8.If you pull and run that pull image

                .docker pull dhundhara/react-image01   
                
                            /react-image01 is dockerHub images
                            
                 .run that image container     

9.some more command

     .docker images  -show the all images   
     
     .docker ps -a :If you want to see all the containers, including the non-running ones.
     
     .docker ps or docker container ps :it only shows the running ones.
     
    . docker rm <container_id>-To remove the container.
    
     .docker start <container_id>.To restart the container.
     
     .docker stop <container_id>  for :-docker stop 28909da87f5a .
     
   .  docker rmi <image_id>: To delete a specific image.
   
    . docker rmi -f <image_id>: To delete a docker image forcefully
    
     .-{docker rmi -f $(docker images -q)}
     
    . docker rm -f $(docker ps -aq): To delete all the docker container available in your machine




