const mysql = require('mysql2');

//Criando a conexão com o banco
const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password: 'c@tolic@',
    database: "userdb",
    port : "3306"
 
});

// estabelecer conexão

db.connect(err =>{
    if(err) throw err;
    console.log("conectado ao banco de dados");

});

// exportar

module.exports = db;