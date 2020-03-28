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
		 <div id="formulario" class="col-md-5 order-md-1">
        <form >
        	<div>
            	<h5>Dados pessoais</h5>
            </div>
            <div class="form-group">
                <label for="inputNome">Nome / Razão Social *</label>
                <input type="nome" class="form-control" id="inputNome" value="" required>
            </div>
            <div class="row">

                <div class="col-md-6 mb-3">
                    <label for="inputCpf">CPF / CNPJ *</label>
                    <input type="cpf" class="form-control" id="inputCpf" value="" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="telInput1">Telefone principal *</label>
                    <input type="telefone1" class="form-control" id="telInput1" value="" required>
                </div>
                <div class="col-md-6 mb-3">
                	<label for="telInput2">Telefone secundário</label>
                    <input type="telefone2" class="form-control" id="telInput2" required>
                </div>
            </div>

            <div class="form-group">
                <label for="emailInput">Email *</label>
                <input type="email" class="form-control" id="emailInput" placeholder="name@example.com" value="" required>
              </div>
              
              <h5>Endereço</h5>
              
			  <div class="mb-3">
                <label for="endereco">CEP</label>
                <input type="text" class="form-control" id="cep" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Logradouro</label>
                <input type="text" class="form-control" id="logradouro" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Número</label>
                <input type="text" class="form-control" id="numero" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Bairro</label>
                <input type="text" class="form-control" id="bairro" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Cidade</label>
                <input type="text" class="form-control" id="cidade" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Estado</label>
                <input type="text" class="form-control" id="estado" required>
              </div>
              <div class="mb-3">
                <label for="endereco">Complemento</label>
                <input type="text" class="form-control" id="comlemento" required>
              </div>
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Aceito os termos de uso.</label>
              </div>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
    </div>

<div class="container">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Open modal
  </button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          Modal body..
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
</div>
</body>
</html>