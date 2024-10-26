function manipularDiv(n){
    console.log(n);
    console.log(n.value);
    let d1 = document.getElementById("div1");
    let d2 = document.getElementById("div2");
    let d3 = document.getElementById("div3");

    if(n == 1){
        console.log("entrou");
        if(d1.style.display === "block"){
            d1.style.display = "none";
        } else{
            d1.style.display = "block";
        } 
    }else if(n == 2){
        if(d2.style.display === "block"){
            d2.style.display = "none";
        } else{
            d2.style.display = "block";
        } 
    }else if(n ==3){
        if(d3.style.display === "block"){
            d3.style.display = "none";
        } else{
            d3.style.display = "block";
        } 
    }
}