# employeeapp-cicd-docker
 This is a sample application to push your application docker image to docker hub using Jenkins.
 
#Steps: <br>
1. Checkout this code to your local. <br>
2. Create a dockerhub account here. https://hub.docker.com/signup <br>
3. Download local jenkins server war from here. https://www.jenkins.io/download/ <br>
4. Once you have the war downloaded run the war from your terminal using "java -jar jenkins.war' <br>
5. Once Jenkins comes up successfully, login to your local jenkins server using http://localhost:8080 <br>
6. Click on New Item or Create Job. Give the name "employeeapp-cicd-docker", select 'Freestyle Project". Click OK <br>
7. Once the job configuration opens, select the checkbox GitHub Project and in the URL, paste
   https://github.com/JawaharElango/employeeapp-cicd-docker <br>
8. Under Source Code Management select Git and paste the below URL. <br>
    https://github.com/JawaharElango/employeeapp-cicd-docker.git
9. Under Build Triggers select Poll SCM and paste <b>* * * * * </b> <br>
10. Under Build, select Invoke-top level maven targets. In the goal give <b>clean</b> <br>
11. Click on Dashboard on the top left side. Then Manage Jenkins -> Manage Plugins. Click on Available tab. Search for docker. Choose the below three plugins and install them. Restart Jenkins if required. <br>
 a. CloudBees Docker Build and Publish plugin <br>
 b. Docker <br>
 c. docker-build-step <br>
12. Now Go to the job 'employeeapp-cicd-docker'. Select configure. Scroll down all the way to build section. Choose 'Docker Build and Publish' from dropdown. In Repository name provide your dockerhub username/employeeapp-cicd-docker <br>
 e.g. jawaharsp/employeeapp-cicd-docker <br>
13. Under Registry credentials -> click Add -> provide your dockerhub username in username and your dockerhub password in password. Then Click on 'Add'. Then choose your credentials. <br>
14. Then Click on Apply and Save. <br>
15. Click on Build now. You see after maven build your docker image pushed to your docker hub. <br>
 
 
