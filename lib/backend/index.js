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

const app = express();

app.listen('3000', ()=>{
    console.log('Server started on port 3000');
})