//Database
const mysql = require("mysql2");
//require method override
const methodOverride = require("method-override");
// for environment variables
const dotenv = require("dotenv");
const express = require("express");
const app = express();
const port = 8080;
//require path
const path = require("path");
//For generating random id
const { v4: uuidv4 } = require("uuid");
//bodyparser
const bodyParser = require("body-parser");
// marked down the blog article

const { marked } = require('marked');

//Loading environment variables from .env file
dotenv.config();

//set the view engine to embedded javascript template
app.set("view engine", "ejs");
//setting the frontend view
app.set("views", path.join(__dirname, "/views"));
//static file location
app.use(express.static("public"));
//for overriding html form methods
app.use(methodOverride("_method"));
//decode the req body from the url
app.use(bodyParser.urlencoded({ extended: true }));

//Building the connection with Database
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.DB_NAME,
  password: process.env.DB_PASS,
});

try {
  connection.connect((err) => {
    if (err) throw err;
    console.log("Connected to the Database");
  });
} catch (err) {
  console.log(err);
  console.log("Some error occurred while connecting to the database!");
}

app.get("/", (req, res) => {
  const q = "SELECT * FROM blog_articles";
  connection.query(q, (err, result) => {
    if (err) throw err;
    const data = result;
    res.render("home.ejs", { data });
  });
});

app.post("/", (req, res) => {
  const { email } = req.body;
  const query = "SELECT * FROM subscriber WHERE subscribed_users = ?";

  connection.query(query, [email], (err, result) => {
    if (err) {
      console.error("Error executing query:", err);
      res.status(500).json({ message: "Internal server error" });
      return;
    }

    if (result.length > 0) {
      res.send("Email already exists");
    } else {
      const insertionQuery =
        "INSERT INTO subscriber (subscribed_users) VALUES (?)";
      connection.query(insertionQuery, [email], (err, result) => {
        if (err) {
          console.error("Error executing insertion query:", err);
          res.status(500).json({ message: "Internal server error" });
          return;
        }
        res.send("Subscribed");
      });
    }
  });
});

app.get("/blog/:id", (req, res) => {
  const { id } = req.params;
  const p = `SELECT * FROM blog_articles WHERE id = ${id}`;
  try {
    connection.query(p, (err, result) => {
      if (err) throw err;
      const data = result[0];
      data.content = marked.parse(data.content);
      res.render("post.ejs", { data: data });
    });
  } catch (err) {
    console.log(err);
    res.send("Some error occurred in fetching from the database");
  }
});

app.post("/submitted", (req, res) => {
  const { firstName, lastName, userEmail, userNumber, userMessage } = req.body;
  const id = uuidv4();
  const q = `INSERT INTO contact (id, firstName, lastName, email, phoneNumber, message) VALUES (?, ?, ?, ?, ?, ?)`
  connection.query(q, [id, firstName, lastName, userEmail, userNumber, userMessage], (err, result) => {
    if (err) { 
      console.error("Error executing the querry", err);
      res.send(500).json({ message: "Internal server error" });
      return;
    }
    console.log(result);
   res.render("submitted.ejs")
  })
})

app.listen(port, () => {
  console.log(`Listening at ${port}`);
});
