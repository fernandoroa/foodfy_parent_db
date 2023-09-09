FROM node
WORKDIR /usr/src/app
COPY ./foodfy_persistent/. /usr/src/app/
RUN npm install
CMD "npm" "run" "nodemon"