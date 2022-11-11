// Codigo propuesto en clase, pero sin cambio de color al salir de la zona
// document.getElementById("menu").addEventListener("mouseover", function (event) {
//     event.target.style.background = "#FA8072" ;
    
// Finalmente agregando variables consegui cambiar el color al entrar y salir con el mouse del menu
let color = document.getElementById("menu");
menu.addEventListener("mouseover", function(event) {
    event.target .style.background = "#FA8072";
})

let color2 = document.getElementById("menu");
menu.addEventListener("mouseout", function(event) {
    event.target .style.background = "#0275d8";
})

