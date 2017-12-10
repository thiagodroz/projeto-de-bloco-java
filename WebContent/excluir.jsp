<%@page import="negocio.Musica"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Excluir produto</title>
</head>

<body style="background-color:#5a2d82;">

		<div style="text-align:center;">
		<h1 style="font-size:50px;color:white;text-shadow:1px 1px 10px black;">
		  Escolha uma música para exclusão
		</h1><br/><br/>
				
	  <form action="MusicaController" method="get">	
    <input type="hidden" name="tela" value="exclusao"/>
	  <select style="border-radius:10px;font-size:20px;padding:5px;margin:20px;" name="musica">
		<c:forEach var="musica" items="${listaMusicas}">
		 <option value="${musica.getId()}">${musica.getNome()}</option>
		</c:forEach>
	   </select>
      <input style="border-radius:10px;font-size:15px;margin:15px;padding:5px" type="submit" value="Excluir música"/>	
	    </form>

	<form action="paineladministrador.jsp">
	 <input style="border-radius:10px;font-size:15px;margin:15px;padding:5px" type="submit" value="voltar"/>
    </form>
   </div>

</body>
</html>