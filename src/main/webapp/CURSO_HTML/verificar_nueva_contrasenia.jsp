<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
<%
Usuario usuario = new Usuario();

String nclave = request.getParameter("contrase�a");
String v_contrase�a=request.getParameter("conf_contrase�a");
HttpSession sesion = request.getSession(); //Se crea la variable de sesi�n
String login_us ="";
String nlogin_us = String.valueOf(sesion.getAttribute("login_us"));
boolean respuesta = usuario.cambiarContrase�a(nlogin_us,nclave,v_contrase�a);
if (respuesta) {
	response.sendRedirect("cerrar_sesion.jsp"); //Se redirecciona a una p�gina espec�fica
} else {
%>
<jsp:forward page="cambiar_contrasenia.jsp">
	<jsp:param name="error"
		value="No se pudo cambiar la contrase�a.<br>Vuelva a intentarlo." />
</jsp:forward>
<%
}
%>