# a very simple actix-web rust server
simple rust-based http server using actix-web.

the server allows you to post, get and clear messages.
it is also designed to be multi-threaded, with each worker maintaining its own state, including a counter for requests and a list of messages.


- post a message to the server
- retrieve all messages posted so far
- clear all messages
- retrieve a message by its index
- each worker keeps its own state
- utilizes actix-web, a high-speed web framework for rust
- utilizes atomic operations for managing the server id
- utilizes mutex for thread-safe interaction with the state


## Example of use 

Here are some examples of how to use this server.

## Launch of the server

```bash 
cargo build
```

### Retrieve the server state
```bash
$ curl localhost:8080
```

### Retriving a message by its index
```bash
$ curl localhost:8080/lookup/3
```

### Post a message
```bash
$ curl -X POST -H "Content-Type: application/json" -d '{"message": "hello"}' localhost:8080/send
```

### Clear all messages
```bash
curl -X POST localhost:8080/clear
```
