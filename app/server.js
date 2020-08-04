const express = require("express");
const http = require("http");
const app = express();
const cors = require("cors");
const port = 4000;
app.use(cors());

const server = http.createServer(app);

app.get("/test", (req, res) => {
  res.status(200).send("Server is running...");
});

server.listen(port, () => console.log(`Listening on port ${port}`));
