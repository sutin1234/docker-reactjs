# use node version to build
FROM node:9.11

# install yarn
RUN npm install -g yarn

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# rewrite 777 permission WORKDIR
RUN chmod -R 777 /usr/src/app

# set owner user WORKDIR
RUN  chown $USER:$USER /usr/src/app

# install and cache app dependencies
COPY package.json /usr/src/app/package.json
RUN yarn install
RUN yarn global add react-scripts

# start app
CMD ["yarn", "start"]