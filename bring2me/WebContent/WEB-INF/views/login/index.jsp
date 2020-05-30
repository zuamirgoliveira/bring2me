<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link href="resources/css/login.css" rel="stylesheet">
		<link href="resources/css/bring2me.css" rel="stylesheet">
	
		<title>Bring2Me</title>	
	</head>
	<body class="text-center">
		<div class="bgHome text-white rounded">
			 <div class="home px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		      <a href="/bring2me/home" id="imgHomeBtn">
            	<img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="25%" height="25%">
            </a>
		    </div>
		    
		    <form:form class="form-signin" action="signin" method="post" modelAttribute="login">
		      <h1 class="h3 mb-3 font-weight-normal">Login</h1>
		      <label for="inputEmail" class="sr-only">Email address</label>
		      <form:input type="email" id="inputEmail" class="form-control" placeholder="Email address" path="email"/>
		      <label for="inputPassword" class="sr-only">Password</label>
		      <form:input type="password" id="inputPassword" class="form-control" placeholder="Password" path="senha"/>
		      <div class="checkbox mb-3">
		      </div>
		      <button id="btnEntrar" class="btn" type="submit">Entrar</button>
		      <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
		    </form:form>
	    </div>
	    
	    
	    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	  </body>
</html>