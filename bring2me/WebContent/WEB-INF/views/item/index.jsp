<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="resources/css/bring2me.css" rel="stylesheet">
	<title>Itens</title>	
	
	</head>
	<body>
		<div class="bgHome p-3 p-md-5 rounded">
			<div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
				<a href="/bring2me/home" id="imgHomeBtn">
			    	<img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
			    </a>
			  </div>
		    <table class="table">
				    <thead>
				      <tr>
						<th>Nome</th>
						<th>Descrição</th>
						<th>Quantidade</th>
						<th>Valor</th>
						<th>Peso</th>
						<th></th>
						<th></th>
				      </tr>
				    </thead>
				    <c:forEach items="${itemLista}" var="item">
				    <tbody>
				      <tr>
						<td>${item.nome}</td>
						<td>${item.descricao}</td>
						<td>${item.quantidade}</td>
						<td>${item.valor}</td>
						<td>${item.peso}</td>				
						<td><a href="/bring2me/editar-item?id=${item.idItem}"><img class="mb-2" id="logoBox" src="resources/imagens/icon/edit.png"  alt="Edit" width="16px" height="16px"></a></td>
						<td><a href="/bring2me/deletar-item?id=${item.idItem}"><img class="mb-2" id="logoBox" src="resources/imagens/icon/trash.png"  alt="Delete" width="16px" height="16px"></a></td>
				      </tr>
				    </c:forEach>
				  </table>
			  <div id="btn" class="row">
			  	<a href="/bring2me/home" id="voltarBtn" class="btn" style="margin:5px">Voltar</a>
				<a href="/bring2me/novo-item" id="novoBtn" class="btn" style="margin:5px">Novo Item</a>
			</div>
	    </div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>