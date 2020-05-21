<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="pt-br">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
      <link href="resources/css/bring2me.css" rel="stylesheet">
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
      <title>Form Usuário</title>
      <script type="text/javascript">
         $(document).ready(function cep() {
         	$('#inputCep').focusout(function buscacep() {
         		var cep = $("#inputCep").val();
         		pesquisacep(cep);
         	})
         })
      </script>
      <script>
	    $(document).ready(function(){
	      var date_input=$('input[id="inputDtNascimento"]'); //our date input has the name "date"
	      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
	      var options={
	        format: 'dd/mm/yyyy',
	        container: container,
	        todayHighlight: true,
	        autoclose: true,
	      };
	      date_input.datepicker(options);
	    })
	</script>
	<script>
		var options = {
			    onKeyPress: function (cpf, ev, el, op) {
			        var masks = ['000.000.000-000', '00.000.000/0000-00'];
			        $('#inputCpfCnpj').mask((cpf.length > 14) ? masks[1] : masks[0], op);
			    }
			}
	
			$('#inputCpfCnpj').length > 11 ? $('#inputCpfCnpj').mask('00.000.000/0000-00', options) : $('#inputCpfCnpj').mask('000.000.000-00#', options);
	</script>
   </head>
   <body>
      <div class="bgHome p-3 p-md-5 rounded" style="width:50%;">
         <div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
         </div>
         <form:form action="salvar" method="post" modelAttribute="usuario">
            <div>
               <h4>Dados pessoais</h4>
            </div>
            <form:hidden path="idUsuario"/>
            <div class="form-group">
               <label for="inputNomeRazaoSocial">Nome *</label>
               <form:input type="text" class="form-control" id="inputNomeRazaoSocial" path="nomeRazaoSocial"/>
            </div>
            <div class="row">
               <div class="col-md-6 mb-3">
                  <label for="inputCpfCnpj">CPF ou CNPJ *</label>
                  <form:input type="text" class="form-control" id="inputCpfCnpj" path="cpfCnpj"/>
               </div>
               <div class="col-md-6 mb-3">
                  <label for="inputTelefone">Telefone</label>
                  <form:input type="text" class="form-control" id="inputTelefone" placeholder="(00) 91111-1111" onkeypress="$(this).mask('(00) 00000-0000')" path="telefone"/>
               </div>
            </div>
            <div class="form-group">
               <label for="inputNomeRazaoSocial">Nome *</label>
               <form:input type="text" class="form-control" id="inputNomeRazaoSocial" path="nomeRazaoSocial"/>
            </div>

            <h4>Endereço</h4>
            <div class="mb-3">
               <label class="control-label" for="inputCep">CEP</label>
               <form:input type="text" class="form-control" id="inputCep" placeholder="00000-000" onkeypress="$(this).mask('00000-000')" path="cep"/>
            </div>
            <div class="mb-3">
               <label class="control-label" for="inputLogradouro">Logradouro</label>
               <form:input type="text" class="form-control" id="inputLogradouro" path="logradouro"/>
            </div>
            <div class="form-group">
               <label for="inputEmail">Email *</label>
               <form:input type="text" class="form-control" id="inputEmail" path="email"/>
            </div>
            <div class="mb-3">
               <label for="inputNumero">Número</label>
               <form:input type="text" class="form-control" id="inputNumero" path="numero"/>
            </div>
            <div class="mb-3">
               <label for="inputBairro">Bairro</label>
               <form:input type="text" class="form-control" id="inputBairro" path="bairro"/>
            </div>
            <div class="mb-3">
               <label for="inputCidade">Cidade</label>
               <form:input type="text" class="form-control" id="inputCidade" path="cidade"/>
            </div>
            <div class="mb-3">
               <label for="inputEstado">Estado</label>
               <form:input type="text" class="form-control" id="inputEstado" path="estado"/>
            </div>
            <div class="mb-3">
               <label for="inputComlemento">Complemento</label>
               <form:input type="text" class="form-control" id="inputComlemento" path="complemento"/>
            </div>
            <div class="form-group form-check">
               <input type="checkbox" class="form-check-input" id="termoAceite">
               <label class="form-check-label" for="termoAceite">Aceito os termos de uso.</label>
            </div>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
         </form:form>
      </div>
      <script src="resources/js/consultarCep.js"></script>	
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <scipt src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
   </body>
</html>