<!DOCTYPE html>
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
		<a href="index.jsp">Inicio</a> 
		<a href="catalogo.jsp">Ver Productos</a> 
		<a href="pedidos.jsp">Realizar Pedido</a> 
		<a href="resenias.jsp">Rese&ntildeas</a> 
		<a class="active" href="inicio_sesion.jsp">Inicio Sesion</a>
	</nav>
	<div class="agrupar">
		<section>
			<%
			String prov = request.getParameter("txtCedula").substring(0, 2);
			Integer anio = 2023-Integer.parseInt(request.getParameter("fecha").substring(0,4));
			String provincia="";
			String[][] provincias = {{"01","AZUAY"},{"02","BOLIVAR"},{"03","CAÑAR"},{"04","CARCHI"},
					{"05","COTOPAXI"},{"06","CHIMBORAZO"},{"07","EL ORO"},{"08","ESMERALDAS"},
					{"09","GUAYAS"},{"10","IMBABURA"},{"11","LOJA"},{"12","LOS RIOS"},{"13","MANABI"},
					{"14","MORONA SANTIAGO"},{"15","NAPO"},{"16","PASTAZA"},{"17","PICHINCHA"},{"18","TUNGURAHUA"},
					{"19","ZAMORA CHINCHIPE"},{"20","GALAPAGOS"},{"21","SUCUMBIOS"},{"22","ORELLANA"},
					{"23","SANTO DOMINGO DE LOS TSACHILAS"},{"24","SANTA ELENA"}};

			for (int x=0; x < provincias.length; x++) {
				for (int y=0; y < provincias[x].length; y++) {
					if(provincias[x][y].equals(prov)){
						provincia=provincias[x][y+1];
						break;
					}

				}
			}
			
			%>
			
			<br>Nombre: <%=request.getParameter("txtNombre")%>
            <br>Cedula: <%=request.getParameter("txtCedula")%>
            <br>Fecha de nacimietno: <%=request.getParameter("fecha")%>
            <br>Tienes <%=anio%> años
            <br>Provincia: <%=provincia%>
            <br>Residencia: <%=request.getParameter("rdResidencia")%>
            <br>Estado Civil: <%=request.getParameter("cmbECivil")%>
            <br>Foto: <%=request.getParameter("fileFoto")%>
            <br>Color Favorito: <%=request.getParameter("colorFavorito")%>
            <br><font color= <%=request.getParameter("colorFavorito")%>>Este es tu color favorito</font>
            
		</section>
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