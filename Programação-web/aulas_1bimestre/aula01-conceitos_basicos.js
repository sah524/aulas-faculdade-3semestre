//Desafio 1: Exibir uma mensagem

var nome = window.prompt("Nome: ");
console.log(`Olá, ${nome}! Seja bem-vindo(a) ao JavaScript!`);

//DDesafio 2: Soma de dois números

var num1 = parseInt(window.prompt("Digite o 1° num: "));
var num2 = parseInt(window.prompt("Digite o 2° num: "));

soma = num1 + num2;

console.log(`O resultado da soma é: ${soma}`);

//Desafio 3: Número par ou ímpar

var num = window.prompt("Digite o numero para verificação:");

if (num % 2 == 0){
    console.log("Número é par");
}else{
    console.log("Número é impar");
}

//Desafio 4: Calculadora simples

var num3 = parseInt(window.prompt("Digite o 1° num: "));
var num4 = parseInt(window.prompt("Digite o 2° num: "));

var soma = num3 + num4;
var sub = num3 - num4;
var mult = num3 * num4;
var div = num3 / num4;

var opcao = window.prompt("Escolha a operação desejada [1]Soma [2]Subtração [3]Multiplicação [4]Divisão");

switch (opcao){
    case "1":
         console.log(`O resultado da soma é: ${soma}`);
         break;
    case "2":
         console.log(`O resultado da subtração é: ${sub}`);
         break;
    case "3":
         console.log(`O resultado da multiplicação é: ${mult}`);
         break;
    case "4":
         console.log(`O resultado da divisão é: ${div}`);
         break;
    default:
        console.log("opção inexistente");
}

//Desafio 5: Contar até 10

for(let i=0 ; i<10 ; i++){
    console.log("Num:"+ i);
}

