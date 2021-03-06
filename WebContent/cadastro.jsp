<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro</title>
<link href="css/bootstrap.css"/>
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
<section style="text-align:center;">
<br/><br/>
<h1>Insira seus dados</h1>
<form method="post" action="CadastroController">
		<br/><br/>
		<input type="text" name="nome" placeholder="Nome Completo"/><br/><br/>
		<input type="text" name="endereco" placeholder="Endereço"/><br/><br/>
		<input type="text" name="telefone" placeholder="Telefone"/><br/><br/>
		<input type="text" name="email" placeholder="E-mail"/><br/><br/>
		<input type="text" name="cidade" placeholder="Cidade"/><br/><br/>
		<input type="text" name="estado" placeholder="Estado"/><br/><br/>
		<input type="text" name="username" placeholder="User name"/><br/><br/>
		<input type="text" name="senha" placeholder="Senha"/><br/><br/>		
		<input type='submit' value='Cadastrar'/>
</form>
	<br/>
	   <c:if test="${alerta != null}">
		  <h2>${alerta}</h2>
		</c:if>
	</section>
</body>
</html>