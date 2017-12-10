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
  <div>
	<h1>Obrigado pela compra!</h1>
	<c:forEach var="musica" items="${listarCompras}">
		<div>
			<img src="${musica.getImagem()}"/><br/>
			<h2>${musica.getNome()}</h2><br/>
		</div>
	</c:forEach>
	<br/>
	<h3>
	  <a href="GeneroController">
	    Voltar para a loja
	  </a>
	 </h3>
  </div>
</body>
</html>