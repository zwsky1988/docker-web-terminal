FROM node:latest

EXPOSE 5000

RUN apt-get update && apt-get install -y wget sysstat golang gcc git vim curl traceroute && apt-get clean

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

VOLUME data

CMD ["npm", "start"]
