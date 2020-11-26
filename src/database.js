const mysql = require('mysql');

const mySqlCon =mysql.createConnection({
    host:'us-cdbr-east-02.cleardb.com',
    user: 'b6bc5ac77907e4',
    password:'952ff99c',
    database:'heroku_e8750bf3785355a',

});

/**
b6bc5ac77907e4 : 952ff99c @ us-cdbr-east-02.cleardb.com /heroku_e8750bf3785355a
 */

mySqlCon.connect( function (err){

    if(err){
        console.error('error connecting: ' + err.stack);
        return;

    }else{
        console.log('Db is conected')
    }
} );

module.exports = mySqlCon;