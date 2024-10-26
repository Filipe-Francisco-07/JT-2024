
function gerar(){
    let body = document.getElementById("body");
    let array_cores =  ['aqua', 'black', 'brown', 'gold', 'grey',
        'red', 'yellow', 'green', 'blue', 'magenta', 'tomato', 'orange', 'olive', 'navy'];

    let div = document.createElement("div")
    div.innerHTML = ("Div");
    let n1 = Math.floor(Math.random() * array_cores.length) + 1;
    console.log(n1);
    div.style.border = array_cores[n1];
    div.style.border = "solid";
    div.style.border = "2px";
    let n2 = Math.floor(Math.random() * array_cores.length) + 1;
    div.style.background = array_cores[n2];
    body.appendChild(div);
}

