<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="resources/css/login.css" rel="stylesheet">
		<link href="resources/css/bring2me.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
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
		      <label for="inputEmail" class="sr-only">Email</label>
		      <form:input type="email" id="inputEmail" class="form-control" placeholder="Email address" path="email"/>
		      <label for="inputPassword" class="sr-only">Senha</label>
		      <form:input type="password" id="inputPassword" class="form-control" placeholder="Password" path="senha"/>
		      <div class="checkbox mb-3">
		      </div>
		      <button id="btnEntrar" class="btn" type="submit">Entrar</button>
		      <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
		    </form:form>
	    </div>
	  </body>
</html>