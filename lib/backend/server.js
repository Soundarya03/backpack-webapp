const express = require('express');
const mysql = require('mysql');

//creating a connection with the database(DB)
const db = mysql.createConnection({
    host: 'localhost',
    user: 'backpack-app',
    password: '12345',
    database: 'backpack'
});
db.connect((err)=>{
    if(err)
        throw err;
    console.log("MySQL connected successfully");
});

//...connection must have now happened.

//Setting up express
const app = express();

app.listen('3000', ()=>{
    console.log('Server started on port 3000');
});

app.use((req, res, next)=>{
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });

//enrolling a student
app.get('/enrollstudent', (req, res)=>{
    console.log('test');
    let stu = {Admno: 'AB1235', Pass: 'srabc'};
    let sql = 'INSERT INTO abc_public_school SET ? ';
    db.query(sql, stu, (err, result)=>{
        if(err)
            throw err;
        console.log(result);
        res.send('Student has been enrolled successfully!');
    });  
});