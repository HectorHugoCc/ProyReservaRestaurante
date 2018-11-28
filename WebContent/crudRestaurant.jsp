<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

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




<style>
.modal-header, h4, .close {
	background-color: #286090;
	color: white !important;
	text-align: center;
	font-size: 30px;
}
</style>

<div id='cssmenu'>

	<ul>

		<li class='active'><a href='crudRestaurant.jsp'>Home</a></li>

		<li><a href='listaRestaurante.jsp'>Consulta</a></li>

		 <li style="float: right;">
<a href='login.jsp'>Iniciar Sesión</a>
</li>
	</ul>
</div>

<title>Mantenimiento Restaurantes</title>
</head>
<body>

	<div class="container">
		<h1>Mantenimiento de Restaurantes</h1>
		<div class="col-md-23">
			<form id="idFormElimina" action="eliminaRestaurant">
				<input type="hidden" id="id_elimina" name="id">
			</form>

			<form accept-charset="UTF-8" action="consultaRestaurant"
				class="simple_form" id="defaultForm2" method="post">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label class="control-label" for="id_nonbre_filtro">NOMBRE</label>
							<input class="form-control" id="id_nonbre_filtro" name="filtro"
								placeholder="Ingrese el nombre" type="text" maxlength="30" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<button type="submit" class="btn btn-primary" id="validateBtnw1">FILTRA</button>
						<br>&nbsp;<br>
					</div>
					<div class="col-md-3">
						<button type="button" data-toggle='modal' onclick="registrar();"
							class='btn btn-success' id="validateBtnw2">REGISTRA</button>
						<br>&nbsp;<br>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="content">

							<table id="tableAlumno"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>ID</th>
										<th>Nombre</th>
										<th>#Tenedores</th>
										<th>Ticket Promedio</th>
										<th>Tipo</th>
										<th>Horario</th>
										<th>Capacidad</th>
										<th>Estacionamiento</th>
										<th>Actualiza</th>
										<th>Elimina</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${lstRestaurant}" var="x">
										<tr>
											<td>${x.idRestaurant}</td>
											<td>${x.nomRest}</td>
											<td>${x.tenedores}</td>
											<td>${x.ticket}</td>
											<td>${x.tipo.descripcion}</td>
											<td>${x.horario}</td>
											<td>${x.capacidad}</td>
											<td>${x.estacionamiento}</td>
											<td>
												<button type='button' data-toggle='modal'
													onclick="editar('${x.idRestaurant}','${x.nomRest}','${x.tenedores}','${x.ticket}','${x.tipo.idtipo}','${x.horario}','${x.capacidad}','${x.estacionamiento}');"
													class='btn btn-success'
													style='background-color: hsla(233, 100%, 100%, 0);'>
													<img src='images/edit.gif' id='id_update' width='auto'
														height='auto' />
												</button>
											</td>
											<td>
												<button type='button' data-toggle='modal'
													onclick="eliminar('${x.idRestaurant}');">
													<img src='images/delete.gif' width='auto' height='auto' />
												</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</form>
		</div>

		<div class="modal fade" id="idModalRegistra">
			<div class="modal-dialog" style="width: 60%">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-ok-sign"></span> Registro de
							Restaurant
						</h4>
					</div>
					<div class="modal-body" style="padding: 20px 10px;">
						<form id="defaultForm" accept-charset="UTF-8"
							action="registraRestaurant" class="form-horizontal" method="post">
							<div class="panel-group" id="steps">
								<!-- Step 1 -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#steps"
												href="#stepOne">Datos de Restaurant</a>
										</h4>
									</div>
									<div id="stepOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_reg_nombre"
														name="restaurant.nomRest" placeholder="Ingrese el Nombre"
														type="text" maxlength="20" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label"
													for="id_reg_num_tenedores"># Tenedores</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_reg_num_tenedores"
														name="restaurant.tenedores"
														placeholder="Ingrese el número de tenedores" type="text"
														maxlength="2" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_ticket">Ticket
													promedio</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_reg_ticket"
														name="restaurant.ticket"
														placeholder="Ingrese el ticket promedio" type="text"
														maxlength="2" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_tipo">Tipo</label>
												<div class="col-lg-5">
													<select id="id_reg_tipo" name="restaurant.tipo.idtipo"
														class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_horario">Horario</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_reg_horario"
														name="restaurant.horario" placeholder="Ingrese el horario"
														type="text" maxlength="2" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_capacidad">Capacidad</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_reg_capacidad"
														name="restaurant.capacidad"
														placeholder="Ingrese la capacidad" type="text"
														maxlength="2" />
												</div>
											</div>
												<div class="form-group">
												<label class="control-label" for="id_reg_estacionamiento">Tiene Estacionamiento</label>
												<label class="radio-inline"> <input name="restaurant.estacionamiento"
													id="id_reg_estacionamiento_1" checked="checked" type="radio" value="1" />Si
												</label> <label class="radio-inline"> <input name="restaurant.estacionamiento"
													id="id_reg_estacionamiento_2" type="radio" value="2" />No
												</label>
											</div>
											<div class="form-group">
												<div class="col-lg-9 col-lg-offset-3">
													<button type="submit" class="btn btn-primary">REGISTRA</button>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</form>

					</div>
				</div>
			</div>

		</div>

		<div class="modal fade" id="idModalActualiza">
			<div class="modal-dialog" style="width: 60%">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-ok-sign"></span> Actualiza
							Restaurant
						</h4>
					</div>
					<div class="modal-body" style="padding: 20px 10px;">
						<form id="defaultForm_2" accept-charset="UTF-8"
							action="actualizaRestaurant" class="form-horizontal"
							method="post">
							<div class="panel-group" id="steps">
								<!-- Step 1 -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#steps"
												href="#stepOne">Datos de Restaurant</a>
										</h4>
									</div>
									<div id="stepOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_ID">ID</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_ID" readonly="readonly"
														name="restaurant.idRestaurant" type="text" maxlength="8" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_nombre">Nombre</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_nombre"
														name="restaurant.nomRest" placeholder="Ingrese el Nombre"
														type="text" maxlength="20" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_num_tenedores">#
													Tenedores</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_num_tenedores"
														name="restaurant.tenedores"
														placeholder="Ingrese el número de tenedores" type="text"
														maxlength="2" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_ticket">Ticket</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_ticket"
														name="restaurant.ticket"
														placeholder="Ingrese el ticket promedio" type="text"
														maxlength="2" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_tipo">Tipo</label>
												<div class="col-lg-5">
													<select id="id_tipo" name="restaurant.tipo.idtipo"
														class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_horario">Horario</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_horario"
														name="restaurant.horario" placeholder="Ingrese el horario"
														type="text" maxlength="2" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_ticket">Capacidad</label>
												<div class="col-lg-5">
													<input class="form-control" id="id_ticket"
														name="restaurant.capacidad"
														placeholder="Ingrese la capacidad" type="text"
														maxlength="2" />
												</div>
											</div>
											<div class="form-group">
												<label class="control-label" for="id_reg_estacionamiento">Tiene Estacionamiento</label>
												<label class="radio-inline"> <input name="restaurant.estacionamiento"
													id="id_reg_estacionamiento_1" checked="checked" type="radio" value="1" />Si
												</label> <label class="radio-inline"> <input name="restaurant.estacionamiento"
													id="id_reg_estacionamiento_2" type="radio" value="2" />No
												</label>
											</div>
											<div class="form-group">
												<div class="col-lg-9 col-lg-offset-3">
													<button type="submit" class="btn btn-primary">ACTUALIZA</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</form>

					</div>
				</div>
			</div>

		</div>

	</div>

	<script type="text/javascript">
		var varTip = function() {
			$.getJSON("cargaTipo", //alias del servlet
			{}, //los parametros
			function(data, textStatus, jqXHR) { //los datos llegan en el objeto data

				$.each(data.lstTipo, function(index, item) { //attr-->atributo
					//alert(index + " - " + item.nombre);
					$("<option/>").attr("value", item.idTipo).text(
							item.descripcion).appendTo("#id_tipo");

				});

			});
		};

		var varTip2 = function() {
			$.getJSON("cargaTipo", //alias del servlet
			{}, //los parametros
			function(data, textStatus, jqXHR) { //los datos llegan en el objeto data
				$.each(data.lstTipo, function(index, item) { //attr-->atributo
					$("<option/>").attr("value", item.idtipo).text(
							item.descripcion).appendTo("#id_reg_tipo");
				});
			});
		};

		//Se inicia al cargar la pagina
		$(document).ready(varTip);
		$(document).ready(varTip2);
	</script>


	<script type="text/javascript">
		function eliminar(id) {
			$('input[id=id_elimina]').val(id);
			$('#idFormElimina').submit();
		}

		function registrar() {
			$('#idModalRegistra').modal("show");
		}

		function editar(id, nombre, numTenedores, ticket, idtipo, horario,
				capacidad) {
			$('input[id=id_ID]').val(id);
			$('input[id=id_nombre]').val(nombre);
			$('input[id=id_num_tenedores]').val(tenedores);
			$('input[id=id_ticket]').val(ticket);
			$('select[id=id_tipo]').val(idtipo);
			$('select[id=id_horario]').val(horario);
			$('select[id=id_capacidad]').val(capacidad);
			$('select[id=id_estacionamiento]').val(estacionamiento);
			$('#idModalActualiza').modal("show");
		}

		$(document).ready(function() {
			$('#tableAlumno').DataTable();
		});
	</script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#defaultForm')
									.bootstrapValidator(
											{
												message : 'This value is not valid',
												excluded : ':disabled',
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {

												}
											})
									.on(
											'error.form.bv',
											function(e) {
												console.log('error');

												// Active the panel element containing the first invalid element
												var $form = $(e.target), validator = $form
														.data('bootstrapValidator'), $invalidField = validator
														.getInvalidFields().eq(
																0), $collapse = $invalidField
														.parents('.collapse');

												$collapse.collapse('show');
											});
						});
	</script>

</body>
</html>
