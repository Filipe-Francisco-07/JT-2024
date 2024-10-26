function soma(n1,n2){
    if(n1.value == "" || n2.value == ""){
        return window.alert("valor vazio");
    }else if(isNaN(n1.value) || isNaN(n2.value)){
        return window.alert("não é número");
    }else{
        const res = parseInt(n1.value) + parseInt(n2.value);
        return window.alert(res);
        
    }
}