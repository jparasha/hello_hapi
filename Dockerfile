FROM openjdk

#copy jars
#RUN MKDIR -p /home/jars
#COPY ./add.jar /home/jars/add.jar
#COPY ./subtract.jar /home/jars/subtract.jar


#RUN apt-get update

#install UTIL
RUN apt-get install unzip

# install node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash 
RUN apt-get install -y nodejs

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

RUN ls -l
CMD [ "node", "app.js" ]
