FROM node
WORKDIR /usr/src/app
COPY ./app_root/. /usr/src/app/
RUN npm install
CMD "npm" "run" "nodemon"