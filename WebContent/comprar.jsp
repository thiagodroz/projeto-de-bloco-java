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
		   <h3 style="float: right;color:white;">Olá ${sessao.getNome()}!</h3>
		</c:when>
		
		<c:otherwise>	
		   <li>	
		<a style="color:white;" href="cadastro.jsp" href="#">			
		   <h3 style="margin-top: -40px;margin-right: -70px;margin-bottom: -30px;">
		     Crie sua conta	     
		   </h3>
		</a>
		
		<form style="display:inline-flex;" method="get" action="LoginController">	
		  <input type="text" name="username" placeholder="Username"/>
		  <input style="margin-left:10px;" type="password" name="senha" placeholder="Senha"/>
		  <input style="margin-left:10px;" type="submit" value="Entrar"/>
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
	   <div style="margin: 10px 15px; text-align: center; color: black; font-size: 20px;">
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
	
	<div style="text-align:center; margin:20px;">
	
	<h1 style="font-size:20px;">Você precisa efetuar o login para realizar compras</h1><br/>
	
	<a style="color:black;" href="GeneroController">Voltar</a>
	
	</div>
	
	</c:otherwise>
	</c:choose>

</body>
</html>