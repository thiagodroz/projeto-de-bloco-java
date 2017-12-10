<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Acesso</title>
<link href="https://fonts.googleapis.com/css?family=Comfortaa" rel="stylesheet">
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
</head>
<body style="background-color:#5a2d82;">

<div style="text-align:center;">
	<form action="ProdutoController" method="get">
	  <input type="hidden" name="tela" value="cadastro"/>
		<h1 style="font-size:50px;color:white;text-shadow:1px 1px 10px black;">Cadastre a música</h1><br/><br/>
		<h3 style="color:white;text-shadow:1px 1px 10px black;">Selecione o gênero
		  <select style="width:150px;" name="categoria">
		   <option value="Rock">Rock</option>
		   <option value="Pop">Pop</option>
		   <option value="Clássico">Clássico</option>
		   <option value="Blues">Blues</option>
		   <option value="Blues">Jazz</option>
		  </select>
		</h3>
		<input type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Imagem do álbum" name="imagem"/>
		<input type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Nome da música"  name="nome" /><br/><br/>
		<input type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Artista da música"  name="artista" /><br/><br/>
		<input type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Descrição da música" name="descricao" />
		<input  type="text" style="border-radius:5px;padding:5px;margin:20px;" placeholder="Preço da música" name="preco" /><br/><br/>
		<input style="border-radius:10px;font-size:15px;padding:5px;margin:10px;" type="submit" value="Cadastrar"/>	
			</form>
			
			<br/>
			
			<h3 style="font-size:25px;color:yellow;font-weight:bold;text-shadow:1px 1px 1px black;">
			  <c:if test="${alerta!=null}">				
				<c:out value="${alerta}"></c:out>     
			  </c:if>
			</h3>
			 <br/>
									   
				<form action="paineladministrador.jsp">
			     <input type="submit" value="Voltar" style="border-radius:10px;font-size:15px;margin:15px;padding:5px"/>
				</form>
	          </div>
	
			</body>
          </html>