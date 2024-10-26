function mudanca(valor){
    let body = document.getElementById("body");
    let div1 = document.getElementById("div1");
    let div2 = document.getElementById("div2");
    let div3 = document.getElementById("div3");

    if(valor.value == "valor1"){
        div1.setAttribute('style','width: 300px; height: 300px; background-color: green; color: white;');
        div1.textContent = "Que bom!";
        div1.style.display = 'block';
        div2.style.display = 'none';
        div3.style.display = 'none';
    }else if(valor.value == "valor2"){
        div2.setAttribute('style','width: 400px; height: 600px; background-color: blue; color: white; border: solid 2px green;');
        div2.textContent = "Vai melhorar!";
        div1.style.display = 'none';
        div2.style.display = 'block';
        div3.style.display = 'none';
    }else if(valor.value == "valor3"){
        div3.setAttribute('style','background-color: red; color: white; border: solid 2px green;');
        div1.style.display = 'none';
        div2.style.display = 'none';
        div3.style.display = 'block';
        div3.textContent = "Procure ajuda!";
        alert("Para psicólogos ligue:(47) 9999 - 9999");
    }
}
