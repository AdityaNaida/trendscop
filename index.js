//Database
const mysql = require("mysql2/promise");
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
const { marked } = require("marked");

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

//Building the connection pool with Database
const pool = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.DB_NAME,
  password: process.env.DB_PASS,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// Function to query the database
async function queryDatabase(query, values) {
  const connection = await pool.getConnection();
  try {
    const [results] = await connection.query(query, values);
    return results;
  } finally {
    connection.release();
  }
}

// Routes
app.get("/", async (req, res) => {
  try {
    const data = await queryDatabase("SELECT * FROM blog_articles");
    res.render("home.ejs", { data });
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.post("/", async (req, res) => {
  const { email } = req.body;
  try {
    const result = await queryDatabase(
      "SELECT * FROM subscriber WHERE subscribed_users = ?",
      [email]
    );
    if (result.length > 0) {
      res.render("existed-subscription.ejs");
    } else {
      await queryDatabase(
        "INSERT INTO subscriber (subscribed_users) VALUES (?)",
        [email]
      );
      res.render("subscribed.ejs");
    }
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.get("/blog/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const result = await queryDatabase(
      "SELECT * FROM blog_articles WHERE id = ?",
      [id]
    );
    if (result.length > 0) {
      const data = result[0];
      data.content = marked.parse(data.content);
      res.render("post.ejs", { data });
    } else {
      res.status(404).json({ message: "Article not found" });
    }
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.patch("/blog/:id", async (req, res) => {
  const { id } = req.params;
  const { heading, article, image, content } = req.body;
  try {
    await queryDatabase(
      "UPDATE blog_articles SET heading = ?, article = ?, image_url = ?, content = ? WHERE id = ?",
      [heading, article, image, content, id]
    );
    res.redirect(`/blog/${id}`);
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.get("/blog/:id/confirm-delete", async (req, res) => {
  const { id } = req.params;
  try {
    const result = await queryDatabase(
      "SELECT * FROM blog_articles WHERE id = ?",
      [id]
    );
    if (result.length > 0) {
      const data = result[0];
      res.render("confirm-delete.ejs", { data });
    } else {
      res.status(404).json({ message: "Article not found" });
    }
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.delete("/blog/:id", async (req, res) => {
  const { id } = req.params;
  try {
    await queryDatabase("DELETE FROM blog_articles WHERE id = ?", [id]);
    res.redirect("/");
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.post("/submitted", async (req, res) => {
  const { firstName, lastName, userEmail, userNumber, userMessage } = req.body;
  const id = uuidv4();
  try {
    await queryDatabase(
      "INSERT INTO contact (id, firstName, lastName, email, phoneNumber, message) VALUES (?, ?, ?, ?, ?, ?)",
      [id, firstName, lastName, userEmail, userNumber, userMessage]
    );
    res.render("submitted.ejs");
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.get("/blog/:id/verify", async (req, res) => {
  const { id } = req.params;
  try {
    const result = await queryDatabase(
      "SELECT * FROM blog_articles WHERE id = ?",
      [id]
    );
    if (result.length > 0) {
      const data = result[0];
      res.render("verify.ejs", { data });
    } else {
      res.status(404).json({ message: "Article not found" });
    }
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.post("/blog/:id/edit", async (req, res) => {
  const { postId, author } = req.body;
  try {
    const result = await queryDatabase(
      "SELECT * FROM blog_articles WHERE id = ?",
      [postId]
    );
    if (result.length > 0) {
      const data = result[0];
      if (data.author !== author) {
        res.send("Entered author name is wrong");
      } else {
        res.render("edit.ejs", { data });
      }
    } else {
      res.status(404).json({ message: "Article not found" });
    }
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.post("/posted", async (req, res) => {
  const id = uuidv4();
  const currentDate = new Date();
  const year = currentDate.getFullYear();
  let month = currentDate.getMonth() + 1;
  let day = currentDate.getDate();
  month = month < 10 ? "0" + month : month;
  day = day < 10 ? "0" + day : day;
  const date = `${year}-${month}-${day}`;
  const {
    author,
    heading,
    article,
    article_topic,
    image_url,
    image_alt,
    content,
  } = req.body;
  try {
    await queryDatabase(
      "INSERT INTO blog_articles (id, author, dated, heading, article, article_topic, image_url, image_alt, content) VALUES (?, ?, ?, ?,?, ?, ?, ?, ?)",
      [
        id,
        author,
        date,
        heading,
        article,
        article_topic,
        image_url,
        image_alt,
        content,
      ]
    );
    res.render("posted.ejs");
  } catch (err) {
    console.error("Error executing query:", err);
    res.status(500).json({ message: "Internal server error" });
  }
});

app.get("/create-post", (req, res) => {
  res.render("create-post.ejs");
});

app.listen(port, () => {
  console.log(`Listening at ${port}`);
});
