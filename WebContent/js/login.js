function ingreso()
{
    var usuario = document.getElementById("usuario").value;
    var password = document.getElementById("pass").value;
    var Exprusuario=/^([a-z])+$/;
    var Exprpass=/^[0-9]{6}+$/;
    if(!Exprusuario.test(usuario)){
        alert("Ingresa usuario valido");
        return 0;
    }else if(!Exprpass.test(password)){
        alert("Ingresa contraseña valida");
    }
    else{
        alert("Bienvenido" + usuario);
        window.open("inicio.jsp");
    }

}