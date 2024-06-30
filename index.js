const mysql = require("mysql2");
const dotenv = require("dotenv");
const express = require("express");
const app = express();
const port = 8080;

//Loading enviorment variables from .env file
dotenv.config();

//Building the connection with Database
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.DB_NAME,
  password: process.env.DB_PASS,
});

//connection querry
try {
  connection.query("SHOW TABLES", (err, result) => {
    if (err) throw err;
    console.log(result);
  });
} catch (err) {
  console.log(err);
  console.log("some error occured here");
}

connection.end();
