<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">

<script src="webjars/jquery/3.4.0/jquery.min.js"></script>
<script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">

<title>Bring2Me</title>	
<style>

#bring2meTitle {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}

#containerBody {
	position: relative;
	width: 100%;
	height: 100%;

}
	
.btn {
	background: #026873;
	padding: 10px;
	margin: 5px;
	width: 100px;
	height: 100px;
}
	
footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
} 

</style>

</head>
<body>
	<div class="containerBody">
		<div class="header text-center">
			<h1 id="bring2meTitle" class="display-4">Bring2Me</h1>
		</div>
		<div class="containerBtn text-center">
			<div id="btn" class="container">
				<a href="/bring2me/postar" id="homeBtn" class="btn btn-light">
					Postar
				</a>
			</div>
			<div id="btn" class="container">
				<a href="/bring2me/rastrear" id="homeBtn" class="btn btn-light">
					Rastrear
				</a>
			</div>
			<div id="btn" class="container">
				<a href="/bring2me/itens" id="homeBtn" class="btn btn-light">
					Itens
				</a>
			</div>
			<div id="btn" class="container">
				<a href="/bring2me/config" id="homeBtn" class="btn btn-light">
					Config
				</a>
			</div>
		</div>
		<footer class="footer">
		  <div class="container text-center">
			<span class="text-muted">C 2020 Bring2Me</span>
		  </div>
		</footer>
    </div>
</body>
</html>