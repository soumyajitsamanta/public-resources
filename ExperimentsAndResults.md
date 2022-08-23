# Introduction

There are experiments or decisions taken after dipping toes in things like GraphQL or learning sanskrit and many others.
For some of them the result of experiment has to be captured so that everyone can see what had happened in detail.

# Experimenting with GraphQL
## Learning the schema
Learning the schema was fluid and fast as learnt on the official page (https://graphql.org/learn/).
Excellent exampes and abilit to run without having to set up your own server and client or using anything like Insomnia or Postman.
See the queries and modify and see results.

## Using GraphQL in Java project
The java experiment had three alternatives:

- The official GraphQL library at [graphql-java/graphql-java](https://github.com/graphql-java/graphql-java)
- The Apollo Kotlin Client
- The GraphQL maven plugin at com.graphql-java-generator:graphql-maven-plugin

### GraphQL maven plugin
The GraphQL maven plugin provides good client code generation with spring integration,
it has no way to do no spring client code generation as the spring dependency will be included by runtime dependency.

- ++ Code generation
- -- Depends on Spring ecluding which is the exception case

### Official GraphQL Library
The official GraphQL library has lots of objects to be created but can be good if we do not want any external dependency.

- ++ No external dependency
- -- We handle the low level things

### Apollo Kotlin
The Apollo Kotlin is compatible with android.

- ++ Android support
