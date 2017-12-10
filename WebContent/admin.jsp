<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Administrador</title>
	</head>

  <body>
    <div>
	<h1>Área do administrador</h1>
	  <form method="post" action="LoginController">
	    <input type="hidden" name="tela" value="admin"/>
	    <input placeholder="Username" type="text" name="username"/><br/><br/>
	    <input placeholder="Senha" type="password" name="senha"/>
	  <br/>
	  <br/>
	    <input type="submit" value="Entrar"/>
  	</form>
  	<br/>

	 <c:if test="${alerta!=null}">				
	   <c:out value="${alerta}"></c:out>     
	 </c:if>
	</div>
  </body>
</html>