const express = require('express');

const app = express();
 
// Define a default message and use an environment variable if provided

const message = process.env.MESSAGE || "Welcome to my awesome app!";
 
app.get('/', (req, res) => {

    res.send(message);

});
 
const port = process.env.PORT || 3000;
 
app.listen(port, function () {

    console.log(`app listening on port ${port}`);

});

 
