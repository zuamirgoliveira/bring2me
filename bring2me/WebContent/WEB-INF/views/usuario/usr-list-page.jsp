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

<title>Form Usuário</title>	
<style>

body {
	backgorund: #795148;
}
#containerBody {
	position: relative;
	width: 100%;
	height: 100%;

}
</style>

</head>
<body>
	<div class="containerBody">
		<div class="header text-center">
			<h1 id="bring2meTitle" class="display-4">Bring2Me</h1>
		</div>
		
		<table class="table table-bordered">
		    <thead>
		      <tr>
		        <th>Código</th>
				<th>CPF / CNPJ</th>
				<th>Razão Social</th>
				<th>Nome</th>
				<th>Data de Nascimento</th>
				<th>Telefone Principal</th>
				<th>Telefone Secundário</th>
				<th>Email</th>
				<th>Status</th>
		      </tr>
		    </thead>
		    <c:forEach items="${usuarioLista}" var="usr">
		    <tbody>
		      <tr>
		        <td>${usr.codigo}</td>
				<td>${usr.cpfCnpj}</td>
				<td>${usr.razaoSocial}</td>
				<td>${usr.nome}</td>
				<td>${usr.dtNascimento}</td>
				<td>${usr.telefone1}</td>
				<td>${usr.telefone2}</td>
				<td>${usr.email}</td>
				<td>${usr.statusUsuario}</td>
		      </tr>
		    </c:forEach>
		  </table>

</div>
</body>
</html>