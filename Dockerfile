FROM node:8

LABEL MAINTAINER Geoffrey 'geoffrey.geofe@gmail.com'

# set up angular cli
RUN yarn global add @angular/cli@1.2.6

WORKDIR /app
COPY package.json /app

RUN npm install #creates cache before adding everything to the repo
COPY . /app
RUN npm run build-prod


# create watch files
CMD npm run start-server
EXPOSE 4200