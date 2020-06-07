<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
   <head>
   <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
      <link href="resources/css/bring2me.css" rel="stylesheet">
	  <script src="resources/js/consultarCep.js"></script>
      
      
      <title>Form Usuário</title>
      <script type="text/javascript">
         $(document).ready(function cep() {
         	$('#inputCep').focusout(function buscacep() {
        	 if (!$("#idUsuario").val()) {
         		var cep = $("#inputCep").val();
         		pesquisacep(cep);
        	 }        	 
         	});
         });

		var options = {
			    onKeyPress: function (cpf, ev, el, op) {
			        var masks = ['000.000.000-000', '00.000.000/0000-00'];
			        $('#inputCpfCnpj').mask((cpf.length > 14) ? masks[1] : masks[0], op);
			    }
			}
	
		$('#inputCpfCnpj').length > 11 ? $('#inputCpfCnpj').mask('00.000.000/0000-00', options) : $('#inputCpfCnpj').mask('000.000.000-00#', options);
		
		$(document).ready(function modal(){
			document.getElementById('myBtn').style.display = 'none';
			if(document.getElementById('idMensagem').value != "") {
				document.getElementById("myBtn").click();
			}
		 });
		
		function redirect() {
	        window.location.href='/bring2me/usuario';	
		}
		
	</script>
   </head>
   <body>
      <div class="bgHome p-3 p-md-5 rounded" style="width:50%;">
         <div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <a href="/bring2me/home" id="imgHomeBtn">
            	<img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
            </a>
         </div>
         <form:form action="salvar-usuario" method="post" modelAttribute="usuario">
            <div>
               <h4>Dados pessoais</h4>
            </div>
            <form:hidden id="idUsuario" path="idUsuario"/>
            <form:hidden id="idMensagem" value="${mensagem}" path=""/>
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
               <label for="inputEmail">Email *</label>
               <form:input type="text" class="form-control" id="inputEmail" path="email"/>
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
            <div id="btn" class="row">
	            <a href="/bring2me/usuario" id="cancelarBtn" class="btn">Voltar</a>
	            <button type="submit" id="salvarBtn" class="btn btn-primary">Salvar</button>
            </div>
         </form:form>
      </div> 
      
      <!-- Button trigger modal -->

		<button id="myBtn" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
		  Launch demo modal
		</button>
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">
		        	 <c:choose>
				         <c:when test = "${tituloModal == 'Sucesso'}">
				         	<img class="mb-2" id="logoBox" src="resources/imagens/icon/sucesso.png"  alt="Edit" width="32px" height="32px" style="margin: 0px 10px 0px 0px">
				         </c:when>
				         <c:otherwise>
				            <img class="mb-2" id="logoBox" src="resources/imagens/icon/erro.png"  alt="Edit" width="32px" height="32px" style="margin: 0px 10px 0px 0px">
				         </c:otherwise>
				      </c:choose>
		        		${tituloModal}
		        	</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        ${mensagem}
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary" onclick="redirect()">OK</button>
		      </div>
		    </div>
		  </div>
		</div>

   </body>
</html>