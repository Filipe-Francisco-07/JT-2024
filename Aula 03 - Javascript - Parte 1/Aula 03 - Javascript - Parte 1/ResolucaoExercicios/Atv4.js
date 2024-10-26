function somar(){
    let texto = document.getElementById("texto");
    let separa = texto.value.split("");
    let soma = 0;
    
    for(let i = 0; i < separa.length; i++){
        soma += (parseInt(separa[i]));
    }
    window.alert(soma);
}
