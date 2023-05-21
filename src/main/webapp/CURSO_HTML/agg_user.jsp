<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
<%
Usuario usuario = new Usuario();
int id = Integer.parseInt(request.getParameter("txtID"));
int per = Integer.parseInt(request.getParameter("txtPerfil"));
String nombre =request.getParameter("txtNombre");
String direccion =request.getParameter("txtDir");
String login =request.getParameter("txtLogin");
String clave =request.getParameter("txtClave");
boolean respuesta = usuario.agregarUsuario(id, per, nombre, direccion, login, clave);
if (respuesta) {
	response.sendRedirect("gestion_usuarios.jsp"); //Se redirecciona a una página específica
} else {
%>
<jsp:forward page="gestion_usuarios.jsp">
	<jsp:param name="error"
		value="No se pudo cambiar la contraseña.<br>Vuelva a intentarlo." />
</jsp:forward>
<%
}
%>