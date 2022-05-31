const express = require('express');
const router = express.Router();

const pool = require('../database');
router.get('/add', (req,res) =>{
    res.render('links/add');
});

router.post('/add', async (req,res) =>{
    console.log(req.body);
    const {nom, abr,descp,  obj, fechai,fechaf, fechap, fechae , fechar,valori} = req.body;
    const newConferencia= { 
        nom, 
        abr,
        descp, 
         obj, 
         fechai,
         fechaf, 
         fechap,
          fechae , 
          fechar,
          valori
    };

    console.log(newConferencia);
    await pool.query('INSERT  INTO conferencia set ?', [newConferencia]);
    res.send('Received');
});

router.get('/listado' , async(req,res) => {
    const lconf = await pool.query('SELECT * FROM conferencia');
    console.log(lconf);
    res.render('links/list', { lconf })
});

router.get('/calendario' , async(req,res) => {
    const lprueba2s = await pool.query('SELECT * FROM prueba');
    console.log(lprueba2s);
    res.render('links/calendar', { lprueba2s })
});


module.exports = router;