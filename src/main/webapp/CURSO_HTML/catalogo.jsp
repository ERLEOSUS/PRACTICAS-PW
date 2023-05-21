<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocios.*"%>
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
		<a href="index.jsp">Inicio</a> <a class="active" href="catalogo.jsp">Ver
			Productos</a> <a href="pedidos.jsp">Realizar Pedido</a> <a
			href="resenias.jsp">Rese&ntildeas</a> <a href="inicio_sesion.jsp">Inicio
			Sesion</a>
	</nav>
	<div class="agrupar">
		<form action="productosxcat.jsp" method="post" id="formulario">
			<table border=0>
				<tr>
					<td>Escoja la categoria:</td>
					<td>
						<%
							Categoria C = new Categoria();
							out.println(C.mostrarCategoria());
							%>
					</td>
				</tr>
				<tr>
					<td><input type="submit" /></td>
				</tr>
			</table>
		</form>
		<div>
			<div class="productos">
				<%
				Producto p = new Producto();
				out.println(p.consultarTodoImg());
				%>
			</div>
		</div>
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