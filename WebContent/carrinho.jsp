<%@page import="negocio.Musica"%>
<%@page import="negocio.Carrinho"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Carrinho de compras</title>
</head>
<body>
	<div>
	  <form action="GeneroController" method="get">
		<input type="submit" value="Continuar comprando" />		
	  </form>
	</div>
		<c:forEach var="compra" items="${lista}">	
 		 <form action="CarrinhoController" method="get">
		  <input type="hidden" name="tela" value="excluir" />
		   <div>
		    <img src="${compra.getImagem()}"/><br/>
		     ${compra.getNome()}<br/>
		    <input type="hidden" name="musica" value="${compra.getId()}"/> 
		   <input type="submit" value="Remover do carrinho" />
		  </div> 
		 </form>
		</c:forEach>
	<div style="clear:both;text-align:center;">
	  <form action="CarrinhoController" method="get">
	    <input type="hidden" name="sessao" value="${sessao.getUserName()}"/> 
	    <input type="hidden" name="tela" value="comprar" />
		<input type="submit" value="Concluir compra" />
	  </form>
	</div>
  </body>
</html>