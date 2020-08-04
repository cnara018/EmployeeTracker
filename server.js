const inquirer = require("inquirer");
const mysql = require("mysql");
const questions = require("./questions.js");
const consoleTable = require('console.table');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "employee_tracker_db"
});

connection.connect(function (err) {
    if (err) throw err;

});

