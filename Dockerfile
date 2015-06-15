FROM ubuntu:14.04

EXPOSE 5000

RUN apt-get update && apt-get install -y vim traceroute golang gcc sysstat 

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

CMD ["npm", "start"]
