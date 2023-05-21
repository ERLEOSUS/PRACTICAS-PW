<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*, com.productos.negocios.*"%>
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
		<%
		HttpSession sesion = request.getSession();
		Pagina pag = new Pagina();
		String usuario = "";
		usuario = (String) sesion.getAttribute("usuario");
		int perfil = (Integer) sesion.getAttribute("perfil");
		String menu = pag.mostrarMenu(perfil);
		out.print(menu);
		%>
		<h1>Sitio Privado de Productos</h1>
		</h4>
		<div class="agrupar">
			<section>
				<h1>PRODUCTOS</h1>
				<%
				Producto p = new Producto();
				out.println(p.consultarTodo());
				%>
				<br>
				<h1>CAMBIAR PRECIO</h1>
				<form action="nuevo_precio.jsp" method="post" id="formulario">
					<table border=1>
						<tr>
							<td>ID:</td>
							<td><input type="text" name="txtID" required="required" /></td>
						</tr>
						<tr>
							<td>Nuevo precio:</td>
							<td><input type="text" name="txtNprecio" maxlength="25" /></td>
						</tr>
						<tr>
							<td><input type="submit" /></td>
							<td><input type="reset" /></td>
						</tr>
					</table>
				</form>
			</section>
		</div>
	</main>
</body>
</html>