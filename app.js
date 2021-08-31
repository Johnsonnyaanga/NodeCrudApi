const express = require("express")
const bodyParser = require('body-parser')
const mysql = require('mysql');

const app = express()

app.use(bodyParser.urlencoded({
    extended: false
}))

app.use(bodyParser.json())

const dbConn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'masomo'
});

dbConn.connect(function(err) {
    if (err) throw err;
    console.log("Database Connected!");
});


//get all students
app.get("/students", function(req, res) {
    dbConn.query("SELECT * FROM students", (err, rows, fields) => {
        if (!err)
            res.send(rows)
        else
            console.log(err)

    })
});



//post a  students
app.post("/students", function(req, res) {
    var data = req.body;

    //console.log(a)
    dbConn.query("INSERT INTO students(ID, NAME, REGNO, FORM, PASSWORD) VALUES(?)", data, (err, rows, fields) => {
        if (!err)
            res.send(rows)
        else
            console.log(err)

    })
});

//get tudent by id
app.get("/students/:id", function(req, res) {
    dbConn.query("SELECT * FROM students WHERE ID = ?", [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send(rows)
        else
            console.log(err)

    })
});

//delete student by id
app.delete("/students/:id", function(req, res) {
    dbConn.query("DELETE FROM students WHERE ID = ?", [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send(rows)
        else
            console.log(err)

    })
});



//update student
//post a  students
app.put("/students", function(req, res) {
    var data = req.body;
    data.forEach(function(value) {
        dbConn.query('UPDATE students SET ? WHERE ID = "' + value.ID + '" ', data, (err, rows, fields) => {
            if (!err)
                res.send(rows)
            else
                console.log(err)

        })
    });


});








app.listen(3000, function() {
    console.log("server started at port 3000...")
})