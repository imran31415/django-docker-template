## Overview
- A dockerized app which includes: django, nginx, gunicorn, postgres, django-restframework, and media upload/static file serving

### Requirements:
1. Django V3.0.6
2. Docker V18.06.1
3. Python v3.7


### Instructions:

1. Clone this repo `git clone https://github.com/imran31415/django-docker-template.git`
2. build: `docker-compose build`
3. run: `docker-compose run`
  - To test locally, do `docker ps` find the container running the app and do the following:
    - ex. container `1s2taxg`
      `docker exec -it 1s2taxg python manage.py createsuperuser`.  
    - follow the prompts to create the super user. 
    - using the port shown in `docker ps` you can see the port mapping to login locally:  For example: 

```
    Imrans-Macbook-Pro-13-Retina:~ imran$ docker ps
CONTAINER ID        IMAGE                                COMMAND                  CREATED             STATUS              PORTS                                                            NAMES
7b503329ce45        django-docker-template_nginx         "nginx -g 'daemon of…"   15 minutes ago      Up 9 minutes        0.0.0.0:1337->80/tcp                                             django-docker-template_nginx_1
c638bef87c0b        django-docker-template_web           "/usr/src/app/entryp…"   15 minutes ago      Up 9 minutes        8000/tcp                                                         django-docker-template_web_1
124f41113864        postgres:10.5-alpine                 "docker-entrypoint.s…"   44 hours ago        Up 9 minutes        5432/tcp
 ```
 
So with the above we can see the app at:

http://localhost:1337/admin/

Since its binded to: 0.0.0.0:1337->80/tcp above
local

