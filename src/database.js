const mysql = require('mysql');

const mySqlCon =mysql.createConnection({
    host:'localhost',
    user: 'root',
    password:'password',
    database:'examen',

});

mySqlCon.connect( function (err){

    if(err){
        console.error('error connecting: ' + err.stack);
        return;

    }else{
        console.log('Db is conected')
    }
} );

module.exports = mySqlCon;