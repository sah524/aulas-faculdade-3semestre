//função de seta
//sem parâmetros
const saudacao = () => console.log("Olá");
saudacao();

//com parâmetros
const dobrar = numero => numero * 2;
console.log(dobrar(2));

//com parâmetros(mais de um)
const somar = (a,b) => a + b;
console.log(somar(3,4))

//função com mais de uma linha

const calcularArea = (base, altura) => {
    const area = (base * altura) / 2;
    return area;
}
console.log(calcularArea(10,5)); 

//funcão String
let nome = "CASA";
let nomeCorrigido = nome.toLowerCase();
console.log(nomeCorrigido)

//Objetos (POO)
const pessoa = {
    nome: "Fulano",
    idade: 12

}
console.log(pessoa);
console.log(pessoa.nome);

//construtor
class Pessoa {
    constructor(nome, idade) {
        //this
        this.nome = nome;
        this.idade = idade;

    }
    //métodos

    retornarNome(){
        return `Nome: ${this.nome}`;
    }
}

const p1 = new Pessoa("Fulano", 12);
const p2 = new Pessoa("Beltrano", 15);
console.log(p1)
console.log(p2)
console.log(p1.retornarNome())
console.log(p2.retornarNome())

//Arrays - armazenar vários valores em uma única variável

let carrinho = []; //array vazio 
console.log(carrinho);
carrinho.push("panela");//push - adiciona ao final
carrinho.push("pano");
carrinho.unshift("meia")//adiciona ao inicio 
carrinho.splice(1,0,"camiseta") //adicionar em posição especifica

//remoção
carrinho.pop(); //remove o ultimo elemento
carrinho.shift(); //remove o primeiro elemento
carrinho.splice(0,1); //trmove o elemento na posição

carrinho.push("pano");
console.log(carrinho.includes("pano")); //pesquisado um item

console.log(carrinho);

