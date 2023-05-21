<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.seguridad.*"%>
<%
Usuario usuario = new Usuario();
int id = Integer.parseInt(request.getParameter("txtID"));

boolean respuesta = usuario.borrarProducto(id);
if (respuesta) {
	response.sendRedirect("cambiar_precio.jsp"); //Se redirecciona a una página específica
} else {
%>
<jsp:forward page="cambiar_precio.jsp">
	<jsp:param name="error"
		value="No pudo borrar el producto.<br>Vuelva a intentarlo." />
</jsp:forward>
<%
}
%>