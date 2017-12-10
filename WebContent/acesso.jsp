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
<body>

<div>
	<form action="ProdutoController" method="get">
	  <input type="hidden" name="tela" value="cadastro"/>
		<h1>Cadastre a música</h1><br/><br/>
		<h3>Selecione o gênero
		  <select style="width:150px;" name="categoria">
		   <option value="Rock">Rock</option>
		   <option value="Pop">Pop</option>
		   <option value="Clássico">Clássico</option>
		   <option value="Blues">Blues</option>
		   <option value="Blues">Jazz</option>
		  </select>
		</h3>
		<input type="text" placeholder="Imagem do álbum" name="imagem"/>
		<input type="text" placeholder="Nome da música"  name="nome" /><br/><br/>
		<input type="text" placeholder="Artista da música"  name="artista" /><br/><br/>
		<input type="text" splaceholder="Descrição da música" name="descricao" />
		<input type="text" placeholder="Preço da música" name="preco" /><br/><br/>
		<input type="submit" value="Cadastrar"/>	
			</form>
			
			<br/>
			
			<h3>
			  <c:if test="${alerta!=null}">				
				<c:out value="${alerta}"></c:out>     
			  </c:if>
			</h3>
									   
				<form action="paineladministrador.jsp">
			     <input type="submit" value="Voltar" />
				</form>
	          </div>
	
			</body>
          </html>