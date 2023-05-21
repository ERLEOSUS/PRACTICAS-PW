<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
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
				<% HttpSession sesion = request.getSession();
				String login_us ="";
				out.println("<h1>Usuaio:"+sesion.getAttribute("login_us"));
				%>
				
					<h2 class="h2_inicio_sesion">Cambiar constra&ntildea</h2>
					<form class="form_inicio_sesion" action="verificar_nueva_contrasenia.jsp"
						method="post" id="formulario">
						<label class="label_inicio_sesion" for="contraseña">Nueva contrase&ntildea:</label>
						<input type="text" id="usuario" name="contraseña"><br> <br>
						<label class="label_inicio_sesion" for="conf_contraseña"> Confirmar contrase&ntildea:</label>
						<input type="password" id="contrasena" name="conf_contraseña"><br>
						<button class="button_inicio_sesion" type="submit" >Cambiar contraseña</button>
					</form>
					<br><%=request.getParameter("error")%>
				</div>
			</section>
		</div>
	</main>
</body>
</html>