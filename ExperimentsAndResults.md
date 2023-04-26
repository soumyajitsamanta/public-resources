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

# Experiementing with New Ubuntu Live Mode Scanner

When the very old HP Scanjet 3300C scanner was attached to the windows 
it did not work, attaching it to mac it did not work. 
But linux had sane and xsane. 
To install sane ubuntu app store was available as fresh install.

So synaptic had to be installed. This is when the apt-get update gave is nothing back.
So apt edit-sources was used to add debian packages repository.

Here are steps:
```sh
apt edit sources
```

In the editor type `deb http://ftp.de.debian.org/debian bullseye main` update name as required.

Do
```sh
apt update
# Replace keys as required.
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 605C66F00D6C9793
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
apt install synaptic
```

Use synaptic to install xsane and sane. It did not scan. 😿

# Different File Sharing Methods

## HTTP server with node + http-server and browser/wget client

To share files using http clients and server we need node and http-server package installed.
In this method we are going to setup http file index with ssl switched on.
Preparation in the sender/hosting side:

1. Prepare the key to use in ssl.
2. Use a username, a password and a key to start http-server with ssl and authentication.
3. Check the url and share to others the username and password.

### Prepare the key:

To generate a key file we need openssl and use `openssl req` command.
It will ask for password to encrypt the key file.
To not have a password for that use `-nodes`.

```
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 3650
```x

### Start the server:

To run the http-server with the key and username and password, we can use `http-server` in command line as follows:

```sh
# -g for gzip compression
# --username --password for basic auth http
# -S for https
http-server ./ -g --username <username> --password <password> -S
```

This should start the server to serve folder contents as http listing.
Then we can use client like curl or wget to get files.

```
# -r for recursively all links
# -nc for do not overwrite
wget -r -nc https://<domain/ip>:8080
```

## Ftp server in a folder [Pending]

To perform the action of running the ftp servewr on any arbitrary folder 
what we need to do is install vsftpd which supports local_root option
 and also takes option from command line as mentioned in the man page.
Ref: https://askubuntu.com/questions/741164/how-to-change-vsftpds-default-directory-to-instead-of-the-users-home-directo
Here is the full command for that:

vsftpd local_root=/
