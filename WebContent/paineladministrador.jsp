<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Painel de controle</title>
</head>
<body>
	<div>
		<h1>Seja bem vindo administrador</h1>
		<form action="acesso.jsp">
			<input type="submit" value="Cadastrar Produto"/>
		</form>
		<form method="post" action="MusicaController">
			<input type="hidden" name="tela" value="excluirmusica"/>
			<input type="submit" value="Excluir produto"/>
		</form>
		<form action="GeneroController">
			<input type="submit" value="Vá para a loja"/>
		</form>
	</div>
</body>
</html>