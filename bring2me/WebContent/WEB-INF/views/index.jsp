<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">

<script src="webjars/jquery/3.4.0/jquery.min.js"></script>
<script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
<title>Bring2Me</title>	
<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">

<style>

#homeBtn {
	margin: auto;
	width: 100px;
	height: 100px;
	align-content: center;	
	vertical-align: middle;
}

#bring2meTitle {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}

</style>

</head>
<body>
	<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	  <h1 id="bring2meTitle" class="display-4">Bring2Me</h1>
	</div>
	<div class="container">
		<div>
			<a href="" id=homeBtn class="btn btn-success">
				Postar
			</a>
			<a href="" id="homeBtn" class="btn btn-primary">
				Rastrear
			</a>
			<a href="" id="homeBtn" class="btn btn-success">
				Itens
			</a>
			<a href="" id="homeBtn" class="btn btn-primary">
				Config
			</a>
		</div>
	</div>

</body>
</html>