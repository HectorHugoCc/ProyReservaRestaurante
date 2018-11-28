
// crear arreglo de imagenes

arreglo=new Array(6);

for(x=0;x<6;x++)
{
	arreglo[x]="images/imagenes/banner" + (x+1) + ".png";	
}

contador=0;
function rotacion()
{
	
	if(contador>= arreglo.length)
	{
		contador=0;	
	}
	
	//-----------*
	
	for(x=1;x<=6;x++)
	{
		document.getElementById("enlace-" + x).style.color="#fff";
	}
	
	document.getElementById("enlace-" + (contador + 1)).style.color="#000";
	//---------------------
	window.document["imagen"].src=arreglo[contador];
	
	contador++;
	
	setTimeout("rotacion()", 3000);
	
}

//----------------

window.onload=function()
{
	enlaces= document.getElementsByTagName("a");
	for(x in enlaces)
	{
		enlaces[x].onclick=ver;	
	}
		
}


function ver()
{
	idnombre= this.id;
	cadena=idnombre.split("-");
	numero=cadena[1];
	contador=numero-1;
	window.document["imagen"].src=arreglo[contador];
	for(x=1;x<=6;x++)
	{
		document.getElementById("enlace-" + x).style.color="#fff";
	}
	
	document.getElementById("enlace-" + (contador + 1)).style.color="#000";
}

function dentro(n){
	var estilo=document.getElementsByClassName("descripcion")[n];
	estilo.style.visibility="visible";
	estilo.style.cursor="pointer";
}
function fuera(n){
	var estilo=document.getElementsByClassName("descripcion")[n];
	estilo.style.visibility="hidden";
}

