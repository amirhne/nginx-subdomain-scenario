# NGINX Subdomain Scenario
This project includes three container running in an isolated docker network. The NGINX container will handle the http requests for subdomain and proxy pass the requests to the two other container running apache and [Simple Hello World Flask App](https://github.com/amirhne/dockerized-hello-world-flask-app).
## How it works?
The NGINX container will handle requests by proxy_pass to upstream servers. The requests will handle like this:
```
mobit.com or any other url          >>> 	mobit.ir
helloworld.mobit.com                >>> 	hello world flask app container
apache.mobit.com                    >>> 	apache container
```
## How to Run it?
For run this project you should have docker and docker-compose installed on your machine. then add this records to your machine hosts file.
```
127.0.0.1		mobit.com
127.0.0.1		www.mobit.com
127.0.0.1		apache.mobit.com
127.0.0.1		helloworld.mobit.com
```
On linux machine you'll find the hosts file in here:
```
/etc/hosts
```
On windows machine you'll find the hosts file in here:
```
c:\Windows\System32\Drivers\etc\hosts
```
Then cd to the project root directory and simple run this command:
```
docker-compose up -d
```
### Result
Now you can access containers by entering http://helloworld.mobit.com for hello world flask app and http://apache.mobit.com for apache.  And by entering http://mobit.com in you browser you will open https://mobit.ir website.

to stop the project use the following command:
```
docker-compose down --rmi local
``` 
