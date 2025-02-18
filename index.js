const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send(" Hi Softility😊");
});

app.listen(8082, () => {
  console.log("Server started on port 8082");
});
