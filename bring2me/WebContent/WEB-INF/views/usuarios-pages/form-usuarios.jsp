<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script src="webjars/jquery/3.4.0/jquery.min.js"></script>
<script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">

<title>Form Usuário</title>	
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

</style>

</head>
<body>
	<div class="containerBody">
		<div class="header text-center">
			<h1 id="bring2meTitle" class="display-4">Bring2Me</h1>
		</div>
		 <div id="formulario" class="col-md-5 order-md-1">
        <form action="config/salvar" method="post" modelAttribute="usuario">
        	<div>
            	<h5>Dados pessoais</h5>
            </div>
            <div class="form-group">
                <label for="inputNome">Nome / Razão Social *</label>
                <input type="nome" class="form-control" id="inputNome" value="${usr.nome}" required>
            </div>
            <div class="row">

                <div class="col-md-6 mb-3">
                    <label for="inputCpf">CPF / CNPJ *</label>
                    <input type="cpf" class="form-control" id="inputCpf" value="${usr.cpfCnpj}" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="telInput1">Telefone principal *</label>
                    <input type="telefone1" class="form-control" id="telInput1" value="${usr.telefone1}" required>
                </div>
                <div class="col-md-6 mb-3">
                	<label for="telInput2">Telefone secundário</label>
                    <input type="telefone2" class="form-control" id="telInput2" value="${usr.telefone2}" required>
                </div>
            </div>

            <div class="form-group">
                <label for="emailInput">Email *</label>
                <input type="email" class="form-control" id="emailInput" placeholder="name@example.com" value="${usr.email}" required>
              </div>
              
              <h5>Endereço</h5>
              
			  <div class="mb-3">
                <label for="endereco">CEP</label>
                <input type="text" class="form-control" id="cep" value="${usr.cep}" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Logradouro</label>
                <input type="text" class="form-control" id="logradouro" value="${usr.logradouro}" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Número</label>
                <input type="text" class="form-control" id="numero" value="${usr.numero}" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Bairro</label>
                <input type="text" class="form-control" id="bairro" value="${usr.bairro}" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Cidade</label>
                <input type="text" class="form-control" id="cidade" value="${usr.cidade}" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Estado</label>
                <input type="text" class="form-control" id="estado" value="${usr.estado}" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Complemento</label>
                <input type="text" class="form-control" id="comlemento" value="${usr.complemento}" required>
              </div>
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Aceito os termos de uso.</label>
              </div>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
    </div>
  </div>
</body>
</html>