<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
	<meta charset="UTF-8">
	<title>Registro de Usuario</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	
	<link rel="stylesheet" href="css/bootstrap.css"/>
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
	<link rel="stylesheet" href="css/bootstrapValidator.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script src="js/login.js"></script>
	<!--===============================================================================================-->
</head>

<body>
<div class="container">
<h3>Registro de Usuario</h3>
	<form action="registraUsuario" method="POST" enctype="multipart/form-data" class="validate-form">
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Nombre is required">
			<label class="control-label" for="id_reg_nombre">Nombre</label>
			<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el nombre" type="text" maxlength="30" />
		</div>
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Apellidos is required">
			<label class="control-label" for="id_reg_apellidos">Apellidos</label>
			<input class="form-control" id="id_reg_apellidos" name="apellidos" placeholder="Ingrese el apellido" type="text" maxlength="30" />
		</div>
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Fecha de Nacimiento is required">
			<label class="control-label" for="id_reg_fechaNacimiento">Fecha de Nacimiento</label>
			<input class="form-control" id="id_reg_fechaNacimiento" name="fechaNacimiento" placeholder="Ingrese la fecha" type="date" maxlength="30" />
		</div>
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Sexo is required">
			<label class="control-label" for="id_reg_sexo">Sexo</label>
			<label class="radio-inline">
				<input name="sexo" id="id_reg_sexo_1" checked="checked" type="radio" value="1"  />Masculino
			</label>
			<label class="radio-inline">
				<input name="sexo" id="id_reg_sexo_2" type="radio" value="2"  />Femenino
			</label>
		</div>
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Usuario is required">
			<label class="control-label" for="id_reg_login">Usuario</label>
			<input class="form-control" id="id_reg_login" name="login" placeholder="Ingrese el usuario" type="text" maxlength="30" />
		</div>
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Contraseña is required">
			<label class="control-label" for="id_reg_password">Contraseña</label>
			<input class="form-control" id="id_reg_password" name="password" placeholder="Ingrese la contraseña" type="password" maxlength="30" />
		</div>
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Email is required">
			<label class="control-label" for="id_reg_correo">Email</label>
			<input class="form-control" id="id_reg_correo" name="correo" placeholder="Ingrese el email" type="email" maxlength="30" />
		</div>
		<div class="form-group wrap-input100 validate-input" 
			data-validate="Foto is required">
			<label class="control-label" for="id_reg_foto">Foto</label>
			<input class="form-control" id="id_reg_foto" name="fotos" placeholder="Ingrese el foto" type="file" />
		</div>
		<div class="form-group">
		     	<button type="submit" class="btn btn-primary" >REGISTRA</button>
		     	
		</div>
	</form>	
</div>

</body>