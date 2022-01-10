//OBJETIVO 1
function Cal(nota1,nota2,nota3,nota4){
    let promedio = 0;
    promedio=(nota1+nota2+nota3+nota4)/4;
    //Mandamos los resultados por un input OBJETIVO 3
    document.datos.Total.value = promedio;
    return promedio;
    
}
//OBJETIVO 2
function estado(pro,exa){
    let resultado = false;
    if(pro < 80 && exa < 80){
        console.log("el pro es ",pro," el exa ",exa)
        
        resultado = false;}
    else
    if(pro >= 80 && exa >= 80){
        console.log("el pro es ",pro," el exa ",exa)
        
        resultado = true;}
//Mandamos los resultados por un input OBJETIVO 3
    if(resultado == false)
        {document.datos.Paso.value = "REPROBO";}
    else
    if(resultado == true)
        {document.datos.Paso.value = "APROBO";}
    return resultado;
}