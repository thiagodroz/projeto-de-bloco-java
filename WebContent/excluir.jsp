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

<body>
		<div>
		<h1>
		  Escolha uma música para exclusão
		</h1><br/><br/>
			
	  <form action="MusicaController" method="get">	
    <input type="hidden" name="tela" value="exclusao"/>
	  <select name="musica">
		<c:forEach var="musica" items="${listaMusicas}">
		 <option value="${musica.getId()}">${musica.getNome()}</option>
		</c:forEach>
	   </select>
      <input type="submit" value="Excluir música"/>	
	    </form>
	<form action="paineladministrador.jsp">
	 <input type="submit" value="voltar"/>
    </form>
   </div>
</body>
</html>