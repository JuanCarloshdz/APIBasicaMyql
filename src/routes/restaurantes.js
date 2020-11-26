const express = require('express');
const router = express.Router();

const mySqlCon = require('../database')


// Consultas 
// Recupera Todos los restaurantes que se encuentran almacenados
router.get('/', (req, res) => {

    mySqlCon.query('select * from restaurants;', (err, rows, fields) => {
        if (!err) {
            res.json(rows)
        } else {
            console.log(err)
        }
    })
});
//Recupera restaurante por ID
router.get('/:id', (req, res) => {
    const { id } = req.params;
    mySqlCon.query('SELECT * FROM restaurants WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            res.json(rows[0]);
        } else {
            console.log(err);
        }
    });
});
// evalua si existe el ID 
router.get ('/valida/:id', (req, res) => {

    const { id } = req.params;
    
    mySqlCon.query('SELECT  count(*) as cuenta FROM restaurants WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            const cuenta = rows[0].cuenta
            if(cuenta == 0){
                res.json({ 'isValido' : true})
            }else{
                res.json({ 'isValido' : false})
            }
        }else {
            res.json(err);
            console.log(err)
        } 
    });

} );  



module.exports = router;
