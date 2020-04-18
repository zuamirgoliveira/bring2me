<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link href="resources/css/login.css" rel="stylesheet">
	
		<title>Bring2Me</title>	
	</head>
	<body class="text-center">
		<div class="bgHome text-white rounded">
			 <div class="home px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		      <img class="mb-2" id="logoBox" src="resources/imagens/3d-gray-cubo.png" alt="" width="150" height="150">
		      <h1 class="display-4" id="titleText">Bring2Me</h1>
		    </div>
		    
		    <form class="form-signin">
		      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
		      <label for="inputEmail" class="sr-only">Email address</label>
		      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
		      <label for="inputPassword" class="sr-only">Password</label>
		      <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
		      <div class="checkbox mb-3">
		      </div>
		      <button id="btnEntrar" class="btn" type="submit">Sign in</button>
		      <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
		    </form>
	    </div>
	    
	    
	    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	  </body>
</html>