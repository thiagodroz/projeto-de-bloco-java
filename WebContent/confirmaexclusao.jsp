<%@page import="negocio.Musica"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirma exclusão</title>
</head>
	<body>
	<h1>Confirma a exclusão da música ${musicaSelecionada.getNome()} ?</h1>
		<form method="post" action="MusicaController">
			<input type="hidden" name="tela" value="confirmaexclusao"/>
				<input type="hidden" value="${musicaSelecionada.getId()}" name="id"/>
			<input type="submit" value="Excluir música"/>
	    </form>
	</body>
</html>