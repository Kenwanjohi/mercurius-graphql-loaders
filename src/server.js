const mercurius = require('mercurius')
const { readFileSync } = require('fs')
const { makeExecutableSchema } = require('@graphql-tools/schema')
const { loaders, resolvers }= require('./resolvers')
const dbconnector = require('./db')

const fastify = require('fastify')({logger: true})

const typeDefs = readFileSync('src/schema.graphql', 'UTF-8')

fastify.register(dbconnector)

fastify.register(mercurius,{
    schema: makeExecutableSchema({
        typeDefs,
        resolvers
    }),
    context: () => {
        return {
          client: fastify.db.client
        } 
    },
    loaders,
    graphiql: 'playground'
})

fastify.get('/', (request, reply) => {
    reply.send({ hello: 'world' })
})
const start = async () => {
try {
    await fastify.listen(3000)
} catch (err) {
    fastify.log.error(err)
    process.exit(1)
}
}

start()