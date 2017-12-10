<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Painel de controle</title>
</head>
<body style="background-color:#5a2d82;">

<div style="text-align:center;">

	<h1 style="color:white;text-shadow:1px 1px 10px black;">Seja bem vindo administrador</h1>
	
	<form action="acesso.jsp">
	
	<input style="border-radius:10px;font-size:15px;margin:15px;padding:5px" type="submit" value="Cadastrar Produto"/>
	
	</form>
	
	<form method="post" action="MusicaController">
	
	<input type="hidden" name="tela" value="excluirmusica"/>
	
	<input style="border-radius:10px;font-size:15px;margin:15px;padding:5px" type="submit" value="Excluir produto"/>
	
	</form>
	
	<form action="GeneroController">
	
	<input style="border-radius:10px;font-size:15px;margin:15px;padding:5px" type="submit" value="Vá para a loja"/>
	
	</form>
	
	</div>

</body>
</html>