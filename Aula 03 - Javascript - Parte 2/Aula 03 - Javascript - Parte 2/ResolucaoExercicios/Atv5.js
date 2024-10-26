function gerar(n){
    let divcentral = document.getElementById("divcentral");
    let k = 0;
    let filhos = Array.from(divcentral.children);
    for (let child of filhos) {
        if (child.getAttribute('id') === 'div') {
            k++;
        }
    }
    
    for (let child of filhos) {
        if (child.getAttribute('id') === 'div') {
            child.remove();
        }
    }

    for(let i = 1; i<=(k + parseInt(n.value)); i++){
        let div = document.createElement("div");
        div.setAttribute('id','div');
        div.innerHTML = (i);
        divcentral.appendChild(div);
    }
}
