//OBJETIVO 1
let AgruSub = 0;
window.onload=()=>{
    let boton = document.getElementById("agrega")
    boton.onclick = () =>{
    
    if(!estaVacio(document.form1.nombre,"Falta el Nombre"));
    if(!estaVacio(document.form1.rif,"Falta el RIF"));
    if(!estaVacio(document.form1.direc,"Falta la Direccion"));
    if(!estaVacio(document.form1.artic,"Falta el Articulo"));
    if(!estaVacio1(document.form1.precio,"Falta el Precio"));
    if(!estaVacio1(document.form1.cant,"Falta la Cantidad"));
    let tabla = document.getElementById("datas")
    let fila = tabla.insertRow(-1);

    let celda = fila.insertCell(-1);
    celda.innerHTML = document.form1.artic.value;

    celda = fila.insertCell(-1);
    let precios = document.form1.precio.value;
    celda.innerHTML = precios;

    celda = fila.insertCell(-1);
    let Cantidad = document.form1.cant.value;
    celda.innerHTML = Cantidad;
    //OBJETIVO 2
    celda = fila.insertCell(-1);
    let Subtotal= Cantidad * precios;
    celda.innerHTML = Subtotal;
    
    //OBJETIVO 3
    celda = fila.insertCell(-1);
    celda.innerHTML = '<input type="button" value="Eliminar" onclick="eliminar()"/>'

    let tabla2 = document.getElementById("tabla2")
    
    AgruSub = AgruSub + Subtotal;
        tabla2.rows[0].cells[1].innerHTML=AgruSub;
    let IVA = AgruSub*(16/100);
    tabla2.rows[1].cells[1].innerHTML=IVA;
    let Monto =AgruSub + IVA;
    tabla2.rows[2].cells[1].innerHTML=Monto;
    }
}
function estaVacio(input,mensajeE){
    if(input.value.trim().length == 0){
        alert(mensajeE)
        input.focus()
        return true;}
    else
        return false;
}
function estaVacio1(input,mensajeE){    //Se busca que la funcion sea mayor que cero
    if(input.value.trim().length == 0 || input.value.trim() <= 0 ){
        alert(mensajeE)
        input.focus()
        return true;}
    else
        return false;
}
function terminar(){
    let salir =  confirm("Desea borrar todo")
    if(!estaVacio(document.form1.nombre,"Falta el Nombre") && !estaVacio(document.form1.rif,"Falta el RIF") && !estaVacio(document.form1.direc,"Falta la Direccion") && !estaVacio(document.form1.artic,"Falta el Articulo") && !estaVacio1(document.form1.precio,"Falta el Precio") && !estaVacio1(document.form1.cant,"Falta la Cantidad") && salir == true )
        {
            let tabla = document.getElementById("datas");
            for (let i=1; tabla.rows.length; i++){
                tabla.rows[i].remove();
                document.form1.reset()
             }
             let tabla2 = document.getElementById("tabla2");
                tabla2.reset().
                document.form1.reset()
             
    }
    else
         alert("Puede continuar")    
}

function eliminar(){
    let tabla = document.getElementById("datas")
    let fila = tabla.deleteRow(-1);
    let celda = fila.deleteRow(-1);
    celda.innerHTML = "";
}