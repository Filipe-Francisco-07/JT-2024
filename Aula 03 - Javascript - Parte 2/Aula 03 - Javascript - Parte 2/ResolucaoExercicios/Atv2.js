function somar(n1,n2){
    let div = document.getElementById("div"); 

    if(n1.value == ""){
        n1.value = 0;
    }
    if(n2.value == ""){
        n2.value = 0;
    } 
    let soma = 0;
    soma += (parseInt(n1.value) + parseInt(n2.value));
    div.innerHTML = (soma);
}