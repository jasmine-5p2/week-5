const express = require('express'); // Import the Express module.
const app = express(); // Create an Express application instance.
const port = 3000; // Define the port number.

app.get("/", (req, res) => { // Define a GET route for the root URL ("/").
    res.send("<h1>hello world</h1>"); // Send an HTML response with "hello world".
});

app.listen(port, () => { // Start the server and listen on the specified port.
    console.log(`app listening to the port ${port}`); // Log a message when the server is running.
});
