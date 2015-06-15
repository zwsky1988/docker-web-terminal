FROM ubuntu:14.04

EXPOSE 5000
RUN sed -i "s/archive\.ubuntu\.com/mirrors\.163\.com/g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y vim traceroute golang gcc sysstat 

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

CMD ["npm", "start"]
