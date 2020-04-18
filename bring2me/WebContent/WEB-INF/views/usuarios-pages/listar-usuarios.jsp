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
	<title>Form Usuário</title>	
	
	</head>
	<body>
		<div class="bgHome p-3 p-md-5 text-white rounded">
			<div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
			    <img class="mb-2" id="logoBox" src="resources/imagens/3d-gray-cubo.png" alt="" width="150" height="150">
			    <h1 class="display-4" id="titleText">Bring2Me</h1>
			  </div>
		    <table class="table" style="color: #FFF">
				    <thead>
				      <tr>
						<th>Documento</th>
						<th>Nome</th>
						<th>Telefone</th>
						<th>Bairro</th>
						<th>Cidade</th>
						<th>Estado</th>
						<th></th>
				      </tr>
				    </thead>
				    <c:forEach items="${usuarioLista}" var="usr">
				    <tbody>
				      <tr>
						<td>${usr.cpfCnpj}</td>
						<td>${usr.nomeRazaoSocial}</td>
						<td>${usr.telefone}</td>
						<td>${usr.bairro}</td>
						<td>${usr.cidade}</td>
						<td>${usr.estado}</td>
						<td><a href="">Edit</a></td>
				      </tr>
				    </c:forEach>
				  </table>
			  <div id="btn" class="container">
				<a href="/bring2me/config/novoUsuario" id="homeBtn" class="btn">
					Novo Usuário
				</a>
			</div>
	    </div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>