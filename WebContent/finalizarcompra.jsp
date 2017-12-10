<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Finalizar compra</title>
</head>
<body>

  <div style="text-align:center;">
	<h1>Obrigado pela compra!</h1>
	<c:forEach var="musica" items="${listarCompras}">
		<div style="float:left;">
			<img style="width:300px;" src="${musica.getImagem()}"/><br/>
			<h2>${musica.getNome()}</h2><br/>
		</div>
	</c:forEach>
	<br/>
	<h3 style="background-color:gray;border-radius:4px;padding: 2px;width: 7%;margin: 50px auto;box-shadow: 1px 1px 10px black;clear:both;">
	  <a style="color:white;text-decoration:none;" href="GeneroController">
	    Voltar para a loja
	  </a>
	 </h3>
  </div>

</body>
</html>