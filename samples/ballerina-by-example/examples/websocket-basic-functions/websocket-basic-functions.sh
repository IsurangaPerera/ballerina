# To run the program, put the code in `websocket-basic-functions.bal`
# and use `ballerina run websocket-basic-functions.bal` command.
$ ballerina run websocket-basic-functions.bal

# To check the sample,use Chrome or Firefox javascript console and run the below commands <br>
$ var ws = new WebSocket("ws://localhost:9090/functions/ws");

$ ws.onmessage = function(frame) {console.log(frame.data)};
$ ws.onclose = function(frame) {console.log(frame)};

# To send messages
$ ws.send("hello world");

#To close the connection
$ ws.close(1000, "I want to go");

# To close connection from server side
$ ws.send("closeMe");

