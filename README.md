# Nginx container to serve static sites


## HOW TO USE 

###### 1 : 
Place the static site files into the **public** directory

###### 2 : 
If Docker is not installed in the server, run the **get-docker** script with the command 
```./get-docker.sh``` using the root folder as the working dir.

###### 3 : 
Once Docker is installed, run the **deploy** script with ```./deploy.sh```. This script can be modified to customize the container settings.


## NOTES

The scripts probably won't be allowed to execute in the server initially. To give them the required permission, run the command ```chmod +x <script_name>```. For example, ```chmod +x deploy.sh``` will allow **deploy.sh** to run.