<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<link href="resources/css/bring2me.css" rel="stylesheet">
	
	<title>Form Usuário</title>	
	
	<script type="text/javascript">
			$(document).ready(function cep() {
				$('#cep').focusout(function buscacep() {
					var cep = $("#cep").val();
					pesquisacep(cep);
				})
			})
	</script>

	</head>
	<body>
		<div class="bgHome p-3 p-md-5 rounded" style="width:50%;">
			<div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
			    <img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
			  </div>
			  <form action="config/salvar" method="post" modelAttribute="usuario">
			  <div>
	            	<h4>Dados pessoais</h4>
	            </div>
	            <div class="form-group">
	                <label for="inputNome">Nome / Razão Social *</label>
	                <input type="nome" class="form-control" id="inputNome" value="${usr.nome}" required>
	            </div>
	            <div class="row">
	            <div class="col-md-6 mb-3">
	                    <label for="inputCpfCnpj">CPF / CNPJ *</label>
	                    <input type="cpf" class="form-control" id="inputCpfCnpj" value="${usr.cpfCnpj}" required>
	                </div>
	                <div class="col-md-6 mb-3">
	                    <label for="inputTelefone">Telefone</label>
	                    <input type="telefone1" class="form-control" id="inputTelefone" value="${usr.telefone1}" required>
	                </div>
	                </div>
	                <div class="form-group">
	                <label for="inputEmail">Email *</label>
	                <input type="email" class="form-control" id="inputEmail" placeholder="name@example.com" value="${usr.email}" required>
	              </div>
	              <div class="form-group">
				    <label for="inputSenha">Digite uma senha</label>
				    <input type="password" class="form-control" id="inputSenha" value="${usr.senha}" placeholder="Senha" required>
				  </div>
				  <div class="form-group">
				    <label for="inputSenha">Repita sua senha</label>
				    <input type="password" class="form-control" id="inputSenha" value="${usr.senha}" placeholder="Senha" required>
				  </div>
				  
	              
	              <h4>Endereço</h4>
	              
				  <div class="mb-3">
	                <label for="cep">CEP</label>
	                <input type="text" class="form-control" id="cep" value="${usr.cep}" required>
	              </div>
	              <div class="mb-3">
	                <label for="logradouro">Logradouro</label>
	                <input type="text" class="form-control" id="logradouro" value="${usr.logradouro}" required>
	              </div>
	              <div class="mb-3">
	                <label for="numero">Número</label>
	                <input type="text" class="form-control" id="numero" value="${usr.numero}" required>
	              </div>
	              <div class="mb-3">
	                <label for="bairro">Bairro</label>
	                <input type="text" class="form-control" id="bairro" value="${usr.bairro}" required>
	              </div>
	              <div class="mb-3">
	                <label for="cidade">Cidade</label>
	                <input type="text" class="form-control" id="cidade" value="${usr.cidade}" required>
	              </div>
	              <div class="mb-3">
	                <label for="estado">Estado</label>
	                <input type="text" class="form-control" id="estado" value="${usr.estado}" required>
	              </div>
	              <div class="mb-3">
	                <label for="comlemento">Complemento</label>
	                <input type="text" class="form-control" id="comlemento" value="${usr.complemento}" required>
	              </div>
	              <div class="form-group form-check">
	                <input type="checkbox" class="form-check-input" id="termoAceite">
	                <label class="form-check-label" for="termoAceite">Aceito os termos de uso.</label>
	              </div>
	            <button type="submit" class="btn btn-primary">Cadastrar</button>
	        </form> 
	    </div>
	    
	<script src="resources/js/consultarCep.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
	</html>