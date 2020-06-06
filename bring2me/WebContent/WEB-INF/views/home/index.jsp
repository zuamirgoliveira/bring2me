<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<link href="resources/css/bring2me.css" rel="stylesheet">
		
		<title>Bring2Me</title>		
	</head>
	<body>
		<div class="bgHome p-3 p-md-5 text-white rounded">
			 <div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		      <img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
		    </div>
		    <div class="container">
		      <div class="card-deck mb-3 text-center">
		       <div class="card-body"> 
				<a href="/bring2me/postar" id="homeBtn" class="btn">
					Postar
				</a>
		       </div>
		       <div class="card-body">     
				<a href="/bring2me/rastrear" id="homeBtn" class="btn">
					Rastrear
				</a>
		       </div>
		       <div class="card-body">    
				<a href="/bring2me/itens" id="homeBtn" class="btn">
					Itens
				</a>
		       </div>
		       <div class="card-body">
				<a href="/bring2me/usuario" id="homeBtn" class="btn">
					Usuarios
				</a>
		       </div>
		      </div>
		    </div>
			<!-- Footer -->
			<footer class="page-footer font-small blue">
			
			  <!-- Copyright -->
			  <div class="footer-copyright text-center py-3" style="color:#000;">
			  	&copy; 2020 Bring2Me
			  </div>
			  <!-- Copyright -->
			
			</footer>
			<!-- Footer -->
	    </div>
	</body>
</html>