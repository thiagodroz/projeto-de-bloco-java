<%@page import="negocio.Usuario"%>
<%@page import="negocio.Musica"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="${mostrarProduto.getNome()}"></c:out></title>
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
		<a href="cadastro.jsp" href="#">			
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
	  <c:choose>
		<c:when test="${sessao != null}">
	<form action="CarrinhoController" method="get">	
	 <input type="hidden" name="tela" value="incluir"/>
	   <div>
		 <img style="width: 300px;" src="${mostrarMusica.getImagem()}" />
		  <h1>${mostrarMusica.getNome()}</h1>
		  <p>${mostrarMusica.getDescricao()}</p>
		  <p>R$ ${mostrarMusica.getPreco()}</p>
	      <input type="hidden" value="${mostrarMusica.getId()}" name="musica"/>
		  <input type="submit" value="Adicionar ao carrinho" />
	   </div>
	</form>
	</c:when>
	<c:otherwise>
	<div>
	<h1>Você precisa efetuar o login para realizar compras</h1><br/>
	<a href="GeneroController">Voltar</a>
	</div>
	</c:otherwise>
	</c:choose>
</body>
</html>