<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>

<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/MiEstilos.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/libreria5.js"></script>

<title>Bienvenido</title>
</head>
<body link="#ffffcc" vlink="#ffffcc" alink="#ffffcc" onLoad="rotacion()">
	<div id='cssmenu'>
		<ul>
			<li class='active'><a href='inicio.jsp'>Home</a></li>
			<li><a href='registraRestaurante.jsp'>Registrar</a></li>
			<li style="float: right;"><a href='login.jsp'>Cerrar Sesión</a>
			</li>


		</ul>
	</div>

	<div class="cuerpo">

		<div>

			<img name="imagen" width="100%" height="100%">

		</div>
		<p id="txtnumero">
		<div style="text-align: right;">
			<a href="#" id="enlace-1">1</a> <a href="#" id="enlace-2">2</a> <a
				href="#" id="enlace-3">3</a> <a href="#" id="enlace-4">4</a> <a
				href="#" id="enlace-5">5</a> <a href="#" id="enlace-6">6</a>
		</div>
	</div>

	<div class="container">
		<div class="titulo">Encuentra tu restaurante preferido</div>


		<form action="listaRest">
			<div class="row">
				<div class="col-xs-11">
					<div class="form-group">
						<label class="control-label" for="id_nonbre_filtro"></label> <input
							class="form-control" id="id_nonbre_filtro"
							name="filtroVarios.nombre" placeholder="Nombre del restaurante"
							type="text" size="70" maxlength="30" />
					</div>
					<button type="submit" class="btn btn-primary">Buscar</button>
				</div>
			</div>
		</form>
		<br>


		<div id="cuerpo">
			<div id="izquierda">
				<img src="images/chunk.jpg" width="230" height="200" hspace="10"
					vspace="10" class="img-rounded" /> Chun Koc Sen
			</div>
			<div id="centro">
				<img src="images/sabores.jpg" border="1" width="230" height="200"
					hspace="10" vspace="10" class="img-rounded"> Sabores Peruanos
			</div>
			<div id="derecho">
				<img src="images/bambino.jpg" border="1" width="230" height="200"
					hspace="10" vspace="10" class="img-rounded"> Trattoria El
				Bambino
			</div>
		</div>
</body>
</html>