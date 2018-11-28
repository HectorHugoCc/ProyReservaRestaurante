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

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Registro de Restaurante</title>
</head>

<body>
<div class="container">
<h3>Registro de Restaurante</h3>
	<form action="registraRest" method="POST" enctype="multipart/form-data">
		<div class="form-group">
			<label class="control-label" for="id_reg_nombre">Nombre</label>
			<input class="form-control" id="id_reg_nombre" name="nomRest" placeholder="Ingrese el nombre" type="text" maxlength="30" />
		</div>
		<div class="form-group">
			<label class="control-label" for="id_reg_tenedores"># Tenedores</label>
			<input class="form-control" id="id_reg_tenedores" name="tenedores" placeholder="Ingrese el numero de tenedores" type="text" maxlength="30" />
		</div>
		<div class="form-group">
			<label class="control-label" for="id_reg_ticket">Ticket</label>
			<input class="form-control" id="id_reg_ticket" name="ticket" placeholder="Ingrese el ticket promedio" type="text" maxlength="30" />
		</div>
		<div class="form-group">
			<label class="control-label" for="id_reg_tipo">Tipo</label>
			<select class="form-control" id="id_tipo" name="tipo">
					<option value=" ">[SELECCIONE]</option>
					<option value="Criolla">Criolla</option>
					<option value="China">China</option>
					<option value="Italiana">Italiana</option>
			</select>
		</div>
		<div class="form-group">
			<label class="control-label" for="id_reg_horario">Horario</label>
			<input class="form-control" id="id_reg_horario" name="horario" placeholder="Ingrese el horario" type="text" maxlength="30" />
		</div>
		<div class="form-group">
			<label class="control-label" for="id_reg_capacidad">Capacidad</label>
			<input class="form-control" id="id_reg_capacidad" name="capacidad" placeholder="Ingrese la capacidad" type="text" maxlength="30" />
		</div>
		<div class="form-group">
			<label class="control-label" for="id_reg_estacionamiento">Tiene Estacionamiento:</label>
			<label class="radio-inline">
				<input name="estacionamiento" id="id_reg_estacionamiento_1"  type="radio" value="1"  />Si
			</label>
			<label class="radio-inline">
				<input name="estacionamiento" id="id_reg_estacionamiento_2" type="radio" value="2"  />No
			</label>
		</div>
		<div class="form-group">
			<label class="control-label" for="id_reg_foto">Foto</label>
			<input class="form-control" id="id_reg_foto" name="fotos" placeholder="Ingrese la foto" type="file" />
		</div>
		<div class="form-group">
		     	<button type="submit" class="btn btn-primary" >REGISTRA</button>
		</div>
	</form>	
</div>

</BODY>