<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<br />
	<c:if test="${usuarioLogado != null}">
		Logado como ${usuarioLogado.email}<br />
	</c:if>
	<br />
	<form action="executa?tarefa=NovaEmpresa" method="post">
		Nome: <input type="text" name="nome" /><br/>
			  <input type="submit" value="Enviar" />
	</form>
	<br />
	<form method="post" action="login">
		Usuario: <input type="text" name="email"><br />
		Senha: <input type="password" name="senha"><br/>
		<input type="submit" value="Login">
	</form>
	<form method="post" action="executa">
		<input type="hidden" name="tarefa" value="Logout">
		<input type="submit" value="Logout" />
	</form>
</body>
</html>