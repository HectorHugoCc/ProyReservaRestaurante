<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>

<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">



<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/MiEstilos.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<title>Consulta de Restaurantes</title>
</head>

<body>

<div id='cssmenu'>

<ul>
  
 <li class='active'>
<a href='inicio.jsp'>Home</a>
</li>
   
<li>
<a href='listaRestaurantePorVarios.jsp'>Consulta</a>
</li>
  
 <li>
<a href='#'>Company</a>
</li>
 
  <li><a href='#'>Contact</a></li>
</ul>
</div>

<br>
<br>
<br>
	<div class="container">
	<a href="listaRest">


		<table class="table">
			<thead>
			<tr>
				<th>Imagen</th>
				<th>Nombre</th>
				<th># Tenedores</th>
				<th>Ticket</th>
				<th>Tipo</th>
				<th>Horario</th>
				<th>Capacidad</th>
				
				
			</tr>
		</thead>
			<!-- 
					Iconos
					http://librosweb.es/libro/bootstrap_3/capitulo_6/iconos_glyphicons.html		
			 -->
			<tbody>	
            <c:forEach items="${datos}" var="aux" >
             <tr class="active">
               	<td>
                	<img alt="Imagen" src="verFoto?idRestaurant=${aux.idRestaurant}" width="80px" height="80px">   
                </td>
                <td>${aux.nomRest}</td>
                <td>${aux.tenedores}</td>
                <td>${aux.ticket}</td>
                <td>${aux.tipo}</td>
                <td>${aux.horario}</td>
                <td>${aux.capacidad}</td>
                 
               
 	         </tr>
			</c:forEach>
        </tbody>
		</table>
</a>

	</div>

<script type="text/javascript">
$(document).ready(function() {
    $('#tableDavidGay').DataTable();
} );
</script>


</body>
</html>