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
		
		<script type="text/javascript">
			function tolltip() {
				  $('[data-toggle="tooltip"]').tooltip()
				};
		</script>
		
		<title>Bring2Me</title>		
	</head>
	<body>
		<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 shadow-sm">
	      <h5 class="my-0 mr-md-auto font-weight-normal"></h5>
	      <nav class="my-2 my-md-0 mr-md-3">
	        <a class="p-2 text-dark" href="#">Relatórios</a>
	      </nav>
	      <a href="/bring2me/login"><img class="mb-2" id="logoBox" src="resources/imagens/icon/logout.png" width="32px" height="32px" data-toggle="tooltip" data-placement="left" title="Logout"></a>
	    </div>
		<div class="bgHome p-3 p-md-5 rounded">
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
			<div lass="footer-copyright text-center py-3" style="font-size: 12px; position: fixed; left: 0; bottom: 0; width: 100%; text-align: center; color: #012340">
	          <p>Poste e rastreie seus malotes com &copy; Bring2Me 2020 - Todos os direitos reservados.</p>
	    	</div>
	    </div>
	</body>
</html>