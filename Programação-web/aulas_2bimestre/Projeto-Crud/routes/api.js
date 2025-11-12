const express = require('express'); //importar o framework
const router = express.Router(); //modularizar as rotas 

//conectar ao banco 
const db = require('../db');

//definir as rotas 
// rota+ cadastrar o usuário
//tipo: POST (REQUEST) - DO SERVIDOR PARA O CLIENTE 
//caminho: /api/users

router.post('/',(req , res)=>{
    //JSON - 
    const {nome, email} = req.body;

    //executar uma instrução SQL -
    db.query('INSERT INTO  users (nome , email) VALUES (? , ?)', [nome,email],
        // verficação de erro
        (err, result)=>{
            if(err) return res.status(500).send(err);//código 500 = erro interno no lado servido
            res.status(201).json({id: result.insertID, nome, email});// código 201 = sucesso

        }  
    )
});

//criar a rota para tarzer os usuários do banco 
router.get('/', (req , res) => {
    //executar a instrução sql
    //db.query("SELECT * FROM users", (err , results)=> {
     //   if(err) return res.status(500).send(err);
      //  res.json(results);

    //})    
    console.log("teste");
})

//exportar as rotas 
module.exports = router;
