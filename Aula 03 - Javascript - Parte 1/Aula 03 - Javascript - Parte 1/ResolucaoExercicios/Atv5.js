function criarBotao(){
    let div = document.getElementById("div");
    let botao = document.createElement("button");
    let br = document.createElement("br");
    botao.setAttribute('onclick','criarBotao()');
    botao.textContent = "Criar botao";
    div.appendChild(br);
    div.appendChild(botao);
}
