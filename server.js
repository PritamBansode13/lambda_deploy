const express = require("express");
const serverless = require("serverless-http");
const app = express();
const PORT = 5000;
const userData = require("./MOCK_DATA.json");
const graphql = require("graphql");
const { GraphQLObjectType, GraphQLSchema, GraphQLList, GraphQLID, GraphQLInt, GraphQLString } = graphql;
const { graphqlHTTP } = require("express-graphql");

// Define your GraphQL UserType, RootQuery, and Mutation here...

const schema = new GraphQLSchema({ query: RootQuery, mutation: Mutation });
app.use("/graphql", graphqlHTTP({
    schema,
    graphiql: true,
}));

// Wrap your Express app with serverless-http
module.exports.handler = serverless(app);
