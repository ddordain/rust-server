# A Very Simple Actix-web Rust Server
Simple Rust-based HTTP Server using Actix-Web.

The server allows you to post, get and clear messages.
It is also designed to be multi-threaded, with each worker maintaining its own state, including a counter for requests and a list of messages.


- Post a message to the server
- Retrieve all messages posted so far
- Clear all messages
- Retrieve a message by its index
- Each worker keeps its own state
- Utilizes Actix-web, a high-speed web framework for Rust
- Utilizes atomic operations for managing the server ID
- Utilizes Mutex for thread-safe interaction with the state
