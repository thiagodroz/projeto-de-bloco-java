<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Músicas cadastradas</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div id="estilo">

	<form action="MusicaController" method="post">
	  <input type="hidden" name="tela" value="acesso"/>		
	  <input type="submit" value="Cadastre uma nova música"/><br/><br/>
	</form>
			
		<h1 style="font-size:30px;">Música cadastrada com sucesso!</h1>
		  <c:forEach var="musica" items="${dados}">
			<div style=" margin:10px;text-align:center;color:white;text-shadow:1px 1px 1px black;font-size:20px;">
			${musica}	
			</div>	
		   <h1 style="clear:both; text-align:center;font-size:20px;text-shadow:1px 1px 1px black;">
		  <a style="color:white" href="GeneroController">Ir para a loja</a></h1>
		</c:forEach>
	   </div>
		
	<br/>
   <br/>
	
 </body>
</html>