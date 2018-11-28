<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<link rel="stylesheet" href="css/MiEstilos.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
	
	
<title>Listado de Restaurantes</title>
</head>

<body>
<div id='cssmenu'>

	<ul>

		<li class='active'><a href='inicio.jsp'>Home</a></li>

		<li><a href='listaRestaurante.jsp'>Consulta</a></li>

		 <li style="float: right;">
<a href='login.jsp'>Iniciar Sesión</a>
</li>
	</ul>
</div>

<div class="container">
<div class="titulo">
<h3>Listado de Restaurantes</h3>
</div>
<a href="listaRest">
</a>
<br><br><br>
<table id="tableDavidGay" class="table table-striped table-bordered" >
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
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('#tableDavidGay').DataTable();
} );
</script>
</body>
</html>


