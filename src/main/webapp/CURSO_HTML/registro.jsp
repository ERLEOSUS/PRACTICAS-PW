<!DOCTYPE html>
<html>
<head>
<title>"Mi Alegria" Pasteleria</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<main>
	<header>
		<a href="index.jsp"> <img src="imagenes/logo.png" width="400"
			height="300" style="display: block; margin: auto;">
		</a>
	</header>
	<nav>
		<a href="index.jsp">Inicio</a> <a href="catalogo.jsp">Ver
			Productos</a> <a href="pedidos.jsp">Realizar Pedido</a> <a
			href="resenias.jsp">Rese&ntildeas</a> <a class="active"
			href="inicio_sesion.jsp">Inicio Sesion</a>
	</nav>
	<div class="agrupar">
		<section>
			<form action="respuesta.jsp" method="post" id="formulario">
				<table border=1>
					<tr>
						<td>Nombre:</td>
						<td><input type="text" name="txtNombre" required="required" /></td>
					</tr>
					<tr>
						<td>Cédula:</td>
						<td><input type="text" name="txtCedula" maxlength="10" /></td>
					</tr>
					<tr>
						<td>Estado Civil:</td>
						<td><select name="cmbECivil">
								<option value="Soltero">Soltero</option>
								<option value="Casado">Casado</option>
								<option value="Divorciado">Divorciado</option>
								<option value="Viudo">Viudo</option>
						</select></td>
					</tr>
					<tr>
						<td>Lugar de residencia:</td>
						<td><input type="radio" name="rdResidencia" value="Sur" />Sur
							<input type="radio" name="rdResidencia" value="Norte" />Norte <input
							type="radio" name="rdResidencia" value="Centro" />Centro</td>
					</tr>
					<tr>
						<td>Foto:</td>
						<td><input type="file" name="fileFoto"
							accept=".jpg, .jpeg, .png" /></td>
					</tr>
					<tr>
						<td>Mes y año de nacimiento:</td>
						<td><input type="month" name="fecha" /></td>
					</tr>
					<tr>
						<td>Color favorito:</td>
						<td><input type="color" name="colorFavorito" /></td>
					</tr>
					<tr>
						<td><input type="submit" /></td>
						<td><input type="reset" /></td>
					</tr>
				</table>
			</form>
		</section>
	</div>
	<footer>
		<ul>
			<li>Facebook</li>
			<li>Instagram</li>
			<li>Twitter</li>
		</ul>
	</footer>
</main>
</body>
</html>