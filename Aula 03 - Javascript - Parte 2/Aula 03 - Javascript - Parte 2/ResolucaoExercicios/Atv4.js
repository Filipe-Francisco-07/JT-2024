
function gerar(n){
    let divcentral = document.getElementById("divcentral");
    removerFilhos();
    for(let i = 1; i<=parseInt(n.value); i++){
        let div = document.createElement("div");
        div.setAttribute('id','div');
        div.innerHTML = (i);
        divcentral.appendChild(div);
    }
}

function removerFilhos() {
    let divcentral = document.getElementById("divcentral");
    let filhos = Array.from(divcentral.children);
    for (let child of filhos) {
        if (child.getAttribute('id') === 'div') {
            child.remove();
        }
    }
}