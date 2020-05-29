<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
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
      <title>Novo Item</title>
      
      <script type="text/javascript">
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
	            <a href="/bring2me/itens" id="cancelarBtn" class="btn">Cancelar</a>
	            <button type="submit" id="salvarBtn" class="btn btn-primary">Salvar</button>
            </div>
         </form:form>
				
      </div>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <scipt src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
   </body>
</html>