# employeeapp-cicd-docker
 This is a sample application to push your application docker image to docker hub using Jenkins.
 
#Steps: 
Checkout this code to your local. <br>
Create a dockerhub account here. https://hub.docker.com/signup
Download local jenkins server war from here. https://www.jenkins.io/download/
Once you have the war downloaded run the war from your terminal using "java -jar jenkins.war'
Once Jenkins comes up successfully, login to your local jenkins server using http://localhost:8080
Click on New Item or Create Job. Give the name "employeeapp-cicd-docker", select 'Freestyle Project". Click OK
Once the job configuration opens, select the checkbox GitHub Project and in the URL, paste
   https://github.com/JawaharElango/employeeapp-cicd-docker
Under Source Code Management select Git and paste the below URL.
https://github.com/JawaharElango/employeeapp-cicd-docker.git
Under Build Triggers select Poll SCM and paste <b>* * * * * </b> 
Under Build, select Invoke-top level maven targets. In the goal give <b>clean</b>
Click on Dashboard on the top left side. Then Manage Jenkins -> Manage Plugins. Click on Available tab. Search for docker. Choose the below three plugins and install them. Restart Jenkins if required.
 a. CloudBees Docker Build and Publish plugin
 b. Docker
 c. docker-build-step
 Now Go to the job 'employeeapp-cicd-docker'. Select configure. Scroll down all the way to build section. Choose 'Docker Build and Publish' from dropdown. In Repository name provide your dockerhub username/employeeapp-cicd-docker
 e.g. jawaharsp/employeeapp-cicd-docker
 Under Registry credentials -> click Add -> provide your dockerhub username in username and your dockerhub password in password. Then Click on 'Add'. Then choose your credentials.
 Then Click on Apply and Save. 
 Click on Build now. You see after maven build your docker image pushed to your docker hub.
 
 
