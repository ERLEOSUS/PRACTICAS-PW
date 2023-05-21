<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
<%
Usuario usuario = new Usuario();
int id = Integer.parseInt(request.getParameter("txtID"));
int cat = Integer.parseInt(request.getParameter("txtCat"));
String descripcion =request.getParameter("txtNproducto");
int precio = Integer.parseInt(request.getParameter("txtPrecio"));
int cant = Integer.parseInt(request.getParameter("numCant"));

boolean respuesta = usuario.agregarProducto(id, cat, descripcion, precio, cant);
if (respuesta) {
	response.sendRedirect("nuevo_producto.jsp"); //Se redirecciona a una página específica
} else {
%>
<jsp:forward page="nuevo_producto.jsp">
	<jsp:param name="error"
		value="No se pudo cambiar la contraseña.<br>Vuelva a intentarlo." />
</jsp:forward>
<%
}
%>