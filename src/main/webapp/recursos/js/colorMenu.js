//Cambio de color al menu al pasar sobre el

let menu = document.getElementById("menu")
menu.addEventListener("mouseover", function(event) {
    event.target .style.background = "#FA8072";
})

//Regreso al color original al salir del menu
menu.addEventListener("mouseout", function(event) {
    event.target .style.background = "#0275d8";
})

