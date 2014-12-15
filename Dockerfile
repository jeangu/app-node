FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y install npm
COPY . /app
RUN cd /app; npm install
EXPOSE 3000
CMD ["nodejs", "/app/index.js" ]
