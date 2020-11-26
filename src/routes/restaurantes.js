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
            res.json({ 'status': "error en la consulta" })
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
            res.json({ 'status': "error en la consulta" })
        }
    });
});
// evalua si existe el ID 
router.get('/valida/:id', (req, res) => {

    const { id } = req.params;

    mySqlCon.query('SELECT  count(*) as cuenta FROM restaurants WHERE id = ?', [id], (err, rows, fields) => {
        if (!err) {
            const cuenta = rows[0].cuenta
            if (cuenta == 0) {
                res.json({ 'isValido': true })
            } else {
                res.json({ 'isValido': false })
            }
        } else {
            res.json({ 'status': "error en la consulta" })
            console.log(err)
        }
    });

});

// Crea registro en la base de datos (POST)
router.post('/', (req, res) => {
    const { id, rating, name, site, email, phone, street, city, state, lat, lng } = req.body;


    //console.log(typeof (rating))
    //console.log(Number.isInteger(rating) ? 'si' : 'no')
    if (!Number.isInteger(rating)) {
        res.json({ 'status': 'Error valor ingresado' });
    } else {
        if (rating >= 0 && rating <= 4) {
            const Con = require('../database')
            Con.query('SELECT  count(*) as cuenta FROM restaurants WHERE id = ?;', [id], (err, rows, fields) => {
                if (!err) {
                    //console.log(rows[0].cuenta)
                    if (rows[0].cuenta == 0) {

                        const query = `
                                CALL addOrEditRestaurant(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
                             `;
                        mySqlCon.query(query,
                            [id, rating, name,
                                site, email, phone,
                                street, city, state,
                                lat, lng
                            ], (err, rows, fields) => {
                                if (!err) {
                                    res.json({ 'status': 'restaurant Saved', id });
                                } else {
                                    res.json({ 'status': "error en la insercion" })
                                    console.log(err);
                                }
                            });
                    } else {
                        res.json({ 'status': 'error ya existe la id' });
                    }
                } else {
                    res.json({ 'status': "error en la consulta" })
                    console.log(err)
                }
            });
        } else {
            res.json({ 'status': 'Valor Fuera de rango' });
        }
    }





});




module.exports = router;
