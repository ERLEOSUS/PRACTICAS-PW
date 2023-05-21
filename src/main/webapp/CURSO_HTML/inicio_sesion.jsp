<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>"Mi Alegria" Pasteleria</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<a href="index.jsp"> <img src="imagenes/logo.png" width="400"
				height="300" style="display: block; margin: 0 auto;">
			</a>
		</header>
		<div class="agrupar">
			<section>
				<div class="div_inicio_sesion">
					<h2 class="h2_inicio_sesion">Iniciar sesi&oacuten</h2>
					<form class="form_inicio_sesion" action="verificar_login.jsp"
						method="post" id="formulario">
						<label class="label_inicio_sesion" for="usuario">Usuario:</label>
						<input type="text" id="usuario" name="usuario"><br> <br>
						<label class="label_inicio_sesion" for="contrasena">Contrase&ntildea:</label>
						<input type="password" id="contrasena" name="contrasena"><br>
						<button class="button_inicio_sesion" type="submit">Iniciar</button>
					</form>
					<a href="registro.jsp"><button class="button_inicio_sesion"
							type="button">Registrarse</button></a>
				</div>
			</section>
			<br><%=request.getParameter("error")%>
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