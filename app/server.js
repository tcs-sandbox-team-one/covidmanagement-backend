const express = require("express");
const http = require("http");
const app = express();
const cors = require("cors");
 const port = 8080; 
app.use(cors());

const server = http.createServer(app);

app.get("/test", (req, res) => {
  res.status(200).send("Server is running...");
});

app.get("/", (req, res) => {
  res.status(200).send("Server is running at a great speed...");
});

server.listen(port, () => console.log(`Listening on port ${port}`));
