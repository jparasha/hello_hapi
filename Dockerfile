FROM node
COPY . /src
RUN cd /src && npm install
EXPOSE 3000
CMD ["npm", "start"]
