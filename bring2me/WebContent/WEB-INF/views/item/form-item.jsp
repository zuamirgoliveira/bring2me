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
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
      <link href="resources/css/bring2me.css" rel="stylesheet">
      
      <title>Novo Item</title>
      
      <script type="text/javascript">
	      $(document).ready(function modal(){
				document.getElementById('myBtn').style.display = 'none';
				if(document.getElementById('idMensagem').value != "") {
					document.getElementById("myBtn").click();
				}
			 });
	      
	      $('#inputValor').mask('#.##0.00', {reverse: true});
      	
			function onlynumber(evt) {
			   var theEvent = evt || window.event;
			   var key = theEvent.keyCode || theEvent.which;
			   key = String.fromCharCode( key );
			   //var regex = /^[0-9.,]+$/;
			   var regex = /^[0-9.]+$/;
			   if( !regex.test(key) ) {
			      theEvent.returnValue = false;
			      if(theEvent.preventDefault) theEvent.preventDefault();
			   }
			}
			
			function redirect() {
				window.location.href="/bring2me/itens";
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
         <form:form action="salvar-item" method="post" modelAttribute="item">
            <div>
               <h4>Cadastro de Item</h4>
            </div>
            <form:hidden id="idItem" path="idItem"/>
            <form:hidden id="idMensagem" value="${mensagem}" path=""/>
            <div class="form-group">
               <label for="inputNome">Nome *</label>
               <form:input type="text" class="form-control" id="inputNome" path="nome"/>
            </div>
            <div class="form-group">
               <label for="inputDescricao">Descrição *</label>
               <form:input type="text" class="form-control" id="inputDescricao" path="descricao"/>
            </div>
            <div class="row">
               <div class="col-md-3 mb-3">
                  <label for="inputQuantidade">Quantidade *</label>
                  <form:input type="text" class="form-control" id="inputQuantidade" maxlength="4" onkeypress='return onlynumber()' path="quantidade"/>
               </div>
               <div class="col-md-3 mb-2">
                  <label for="inputValor">Valor R$ *</label>
                  <form:input type="text" class="form-control" id="inputValor" maxlength="8" onkeypress='return onlynumber()' path="valor"/>
               </div>
               <div class="col-md-3 mb-2">
                  <label for="inputPeso">Peso Kg *</label>
                  <form:input type="text" class="form-control" id="inputPeso" maxlength="8" onkeypress='return onlynumber()' path="peso"/>
               </div>
            </div>

            <div id="btn" class="row">
	            <a href="/bring2me/itens" id="cancelarBtn" class="btn">Voltar</a>
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