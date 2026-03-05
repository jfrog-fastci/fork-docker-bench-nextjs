FROM node:20

RUN apt-get update
RUN apt-get install -y vim less man-db wget telnet curl net-tools iputils-ping htop dnsutils strace

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
