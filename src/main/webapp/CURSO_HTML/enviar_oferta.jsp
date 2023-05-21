<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
<%
Usuario usuario = new Usuario();

int id = Integer.parseInt(request.getParameter("txtID"));
String estado=request.getParameter("txtEstado");
HttpSession sesion = request.getSession(); //Se crea la variable de sesión
String login_us ="";
String nlogin_us = String.valueOf(sesion.getAttribute("login_us"));
boolean respuesta = usuario.agregarOferta(id, estado);
if (respuesta) {
	response.sendRedirect("oferta.jsp"); //Se redirecciona a una página específica
} else {
%>
<jsp:forward page="oferta.jsp">
	<jsp:param name="error"
		value="No se pudo cambiar la contraseña.<br>Vuelva a intentarlo." />
</jsp:forward>
<%
}
%>