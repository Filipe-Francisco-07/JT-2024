function criarArray(array){
    let div = document.getElementById("div2");

    for(var i = 0; i < array.length; i++){
        let text = document.createTextNode(array[i]);
        let br = document.createElement("br");
        div.appendChild(text);
        div.appendChild(br);
    }

}