<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Administrador</title>
	</head>

  <body style="background-color:#5a2d82;">
    <div style="color:white;text-align:center;">
	<h1>Área do administrador</h1>
	  <form method="post" action="LoginController">
	    <input type="hidden" name="tela" value="admin"/>
	    <input style="border-radius:5px;padding:5px;" placeholder="Username" type="text" name="username"/><br/><br/>
	    <input style="border-radius:5px;padding:5px;" placeholder="Senha" type="password" name="senha"/>
	  <br/>
	  <br/>
	    <input style="border-radius:10px;font-size:15px;margin:15px;padding:5px" type="submit" value="Entrar"/>
  	</form>
  	<br/>

	 <c:if test="${alerta!=null}">				
	   <c:out value="${alerta}"></c:out>     
	 </c:if>
	</div>
  </body>
</html>