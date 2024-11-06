
function rolarTela(element) {
    const map = {
        "img_eldenring": "eldenring",
        "img_darksouls": "darksouls",
        "img_cs2": "cs2",
        "img_reddead": "reddead",
        "img_dyinglight": "dyinglight",
        "img_dayz": "dayz"
    };

    const targetId = map[element.id];
    if (targetId) {
        document.getElementById(targetId).scrollIntoView({ behavior: "smooth" });
    }
}

function modoEscuro() {
    const h1 = document.querySelectorAll(".h1");
    const headers = document.querySelectorAll(".header");
    const body = document.getElementById("body");
    const botao = document.getElementById("darkmode");
    const botao2 = document.getElementById("darkmode2");
    if (botao.style.background.includes("rgb(63, 205, 117)")) { 
        botao.style.background = "linear-gradient(135deg, rgb(222, 85, 85), rgb(235, 104, 52))";
        botao2.style.background = "linear-gradient(135deg, rgb(222, 85, 85), rgb(235, 104, 52))";
        headers.forEach(header => {
            header.style.background = "linear-gradient(135deg,rgb(131, 173, 235),rgb(86, 3, 168)";
        });
        h1.forEach(h => {
            h.style.color = "black";
        });
        body.style.background = "linear-gradient(135deg,rgb(146, 116, 175),rgb(85, 118, 175))";
    } else {
        botao.style.background = "linear-gradient(135deg, #3fcd75, #39b902)";
        botao2.style.background = "linear-gradient(135deg, #3fcd75, #39b902)";
        headers.forEach(header => {
            header.style.background = "";
        });

        body.style.background = "";
        h1.forEach(h => {
            h.style.color = "";
        });

    }  
}


function aplicarEfeito(event) {
    if (event.type === "mouseenter") {
      event.currentTarget.style.border = "3px rgb(34, 219, 62) solid";
      event.currentTarget.style.background = "#5e5e5e";
    } else if (event.type === "mouseleave") {
        event.currentTarget.style.background = "#222";
      event.currentTarget.style.border = "";
    }
  }
  
  document.addEventListener("DOMContentLoaded", () => {
    const divs = document.querySelectorAll(".jogo");
  
    divs.forEach((div) => {
      div.addEventListener("mouseenter", aplicarEfeito);
      div.addEventListener("mouseleave", aplicarEfeito);
    });
  });
  
  
  
  



