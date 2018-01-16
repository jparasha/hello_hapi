'use strict';
const Hapi   = require('hapi');
const Server = new Hapi.Server();
const Hello  = require('./lib/hello');
var morgan      = require('morgan');

Server.connection({ port: 3000 });
app.use(morgan('dev'));

Server.route({
    method: 'GET',
    path: '/hello/{user}',
    handler: function (request, reply) {

        const result = Hello(decodeURIComponent(request.params.user));
        reply(result);
    }
});

// don't start server if this file was required

if (!module.parent) {

    Server.start((err) => {

        if (err) {
            throw err;
        }
        console.log(
            `
  Hey There! The Server is running at: ${Server.info.uri}/hello`);
    });
}

module.exports = Server;
