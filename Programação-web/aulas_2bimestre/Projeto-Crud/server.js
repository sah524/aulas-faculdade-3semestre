const express = require('express');
const res = require('express/lib/response');
const app = express(); //Tudo que está em node_modules está na variavel app
const port = 3000;

//definir o caminho 

const path = require('path');

// informar onde os arquivos estáticos estão
app.use(express.static('public'));

//conectar ao banco de dados
const db = require ('./db');

//rota
// Requisão -> Cliente     /    Resposta  <- Servidor

app.get('/', (req, res) =>{   
     //res.send('Front Funcionando!');
     res.sendFile(path.join(__dirname , 'public', "index.html"));
});

app.listen(port, () =>{
    console.log("Servidor funcionando!")

});