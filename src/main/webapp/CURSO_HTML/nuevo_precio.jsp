<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
<%
Usuario usuario = new Usuario();
int id = Integer.parseInt(request.getParameter("txtID"));
int nuevo_precio = Integer.parseInt(request.getParameter("txtNprecio"));

boolean respuesta = usuario.cambiarPrecio(id, nuevo_precio);
if (respuesta) {
	response.sendRedirect("cambiar_precio.jsp"); //Se redirecciona a una página específica
} else {
%>
<jsp:forward page="cambiar_precio.jsp">
	<jsp:param name="error"
		value="No se pudo cambiar la contraseña.<br>Vuelva a intentarlo." />
</jsp:forward>
<%
}
%>