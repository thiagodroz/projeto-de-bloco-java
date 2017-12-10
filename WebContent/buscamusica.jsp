<%@page import="negocio.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="negocio.Musica"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AudioMedia's Song Store</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
<script src="js/funcaomenu.js"></script>
</head>
<body>
	<section id="buscar">
	   <form method="post" action="BuscarController">	
		  <input id="search" type="text" name="procurar" placeholder="Procurar por musicas"/>	
		  <input type="submit" value="Buscar"/>
		</form>
	</section>

	<div id="menu">
		<ul class="menu">
       	  <a href="GeneroController">
		  </a>
			<li><a href="GeneroController">Home</a></li>
			<li class="show-sub-menu"><a>Gêneros</a>
				<ul class="sub-menu">
					<li><a href="#">Pop</a></li>
					<li><a href="#">Rock</a></li>
					<li><a href="#">Blues</a></li>
				</ul>
			</li>	
			<c:choose>
		<c:when test="${sessao != null}">
		   <h3>Olá ${sessao.getNome()}!</h3>
		</c:when>
		
		<c:otherwise>	
		   <li>	
		<a style="color:white;" href="cadastro.jsp" href="#">			
		   <h3>
		     Crie sua conta	     
		   </h3>
		</a>
		
		<form method="get" action="LoginController">	
		  <input type="text" name="username" placeholder="Username"/>
		  <input type="password" name="senha" placeholder="Senha"/>
		  <input type="submit" value="Entrar"/>
		</form>
		  </li>
		</c:otherwise>
	  </c:choose>	
		  </ul>
	  </div>

  <c:forEach var="produto" items="${listaBusca}">
  <c:if test="${musica.getNome().toLowerCase().contains(nomeMusica.toLowerCase())}">  
     <c:set var="encontrou" value="true"/>
		<div>
			<form action="CarrinhoController" method="post">
				<img src="${musica.getImagem()}"/>
				<P>${musica.getNome()}</p>
				<p>R$ ${musica.getPreco()}</p>
				<input type="hidden" name="Comprar" value ="${musica.getId()}"/>
				<br/>
				<input type="submit" value="Comprar"/>
			</form>	
		</div>
	</c:if>
  </c:forEach>
  
      <c:if test="${encontrou == false }">
    <br/>
  <br/>
 	<h1>Música não encontrada</h1>
 	 </c:if>
 	  <br/>
 	   <br/>
 	
 	<p>
 	  <a href="GeneroController">Voltar
 	  </a>
 	</p>
</body>
</html>