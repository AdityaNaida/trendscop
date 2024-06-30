//Database
const mysql = require("mysql2");
//require method override
const methodOverride = require("method-override");
// for enviorment variables
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

//Loading enviorment variables from .env file
dotenv.config();

//set the view egine to embedded javascript template
app.set("view engine", "ejs");
//setting the frotned view
app.set("views", path.join(__dirname, "/views"));
//static file location
app.use(express.static("public"));
//for overidding html form methods
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
  console.log("Some error occured while connecrting to the database!");
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

app.listen(port, () => {
  console.log(`Listening at ${port}`);
});

// try {
//   connection.query("SHOW TABLES", (err, result) => {
//     if (err) throw err;
//     console.log(result);
//   });
// } catch (err) {
//   console.log(err);
//   console.log("some error occured here");
// }

// connection.end();
