<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link href="resources/css/home.css" rel="stylesheet">
		<title>Bring2Me</title>	
	
	</head>
	<body>
		<div class="bgHome p-3 p-md-5 text-white rounded">
			 <div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		      <img class="mb-2" id="logoBox" src="resources/imagens/3d-gray-cubo.png" alt="" width="150" height="150">
		      <h1 class="display-4" id="titleText">Bring2Me</h1>
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
				<a href="/bring2me/config" id="homeBtn" class="btn">
					Config
				</a>
		       </div>
		      </div>
		    </div>
			<!-- Footer -->
			<footer class="page-footer font-small blue">
			
			  <!-- Copyright -->
			  <div class="footer-copyright text-center py-3">
			  	&copy; 2020 Bring2Me
			  </div>
			  <!-- Copyright -->
			
			</footer>
			<!-- Footer -->
	    </div>
	    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>