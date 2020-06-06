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
	  
      <title>Novo Malote</title>
      
      <script type="text/javascript">
	      $(document).ready(function remetente() {
	       	$('#inputRemetente').focusout(function getRemetente() {
	       		document.getElementById('idUsrRemetente').value=($("#inputRemetente").val());
	       	});
	       });
	      
	       $(document).ready(function destinatario() {
	       	$('#inputDestinatario').focusout(function getRemetente() {
	       		document.getElementById('idUsrDestinatario').value=($("#inputDestinatario").val());
	       	});
	       });
	       
	       $(document).ready(function getSelectedValue() {
	          	document.getElementById('inputRemetente').value=($("#idUsrRemetente").val());
	          	document.getElementById('inputDestinatario').value=($("#idUsrDestinatario").val());
	          	
	          	var itens = document.getElementById('itensMalote').value;
	          	var re = /\s*,\s*/;
	          	var itemList = itens.split(re);
	
	          	var i;
	          	for (i = 0; i < itemList.length; i++) {
	          		var id = '#' + itemList[i];
	          		$(id).attr('checked', 'checked');
	          	}
	          });
      </script>
  
   </head>
   <body>
      <div class="bgHome p-3 p-md-5 rounded" style="width:50%;">
         <div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <a href="/bring2me/home" id="imgHomeBtn">
            	<img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
            </a>
         </div>
         <form:form action="salvar-malote" method="post" modelAttribute="malote">
            <div>
               <h4>Cadastro de Malote</h4>
            </div>
            <form:hidden id="idMalote" path="idMalote"/>
            <form:hidden id="idUsrRemetente" path="idUsrRemetente"/>
            <form:hidden id="idUsrDestinatario" path="idUsrDestinatario"/>
            <form:hidden id="itensMalote" value="${itensMalote}" path=""/>
            <div class="form-group">
               <label for="inputCodigoRastreio">Código de rastreio</label>
               <form:input type="text" class="form-control" id="inputCodigoRastreio" path="codigoRastreio"/>
            </div>
            <div class="row">
               <div class="col-md-6 mb-3">
               		<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <label class="input-group-text" for="inputRemetente">Remetente</label>
						  </div>
						  <select class="custom-select" id="inputRemetente">
						    <option selected>Selecione...</option>
						     <c:forEach items="${usuarios}" var="item">
						    	<option value="${item.idUsuario}">${item.nomeRazaoSocial}</option>
							    </c:forEach>
						  </select>
						</div>
            	</div>
				<div class="col-md-6 mb-3">
               		<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <label class="input-group-text" for="inputDestinatario">Destinatário</label>
						  </div>
						  <select class="custom-select" id="inputDestinatario">
						    <option selected>Selecione...</option>
						     <c:forEach items="${usuarios}" var="item">
						     	<option value="${item.idUsuario}">${item.nomeRazaoSocial}</option>
							    </c:forEach>
						  </select>
						</div>
            	</div>
            </div>
            <div>
               <h5>Itens</h5>
            </div>		    
		    <table class="table">
			    <c:forEach items="${itens}" var="item">
			    <tbody>
			      <tr>
					<td>
					<div class="custom-control custom-checkbox">
					  <input type="checkbox" class="custom-control-input" id="${item.idItem}"/>
					  <label class="custom-control-label" for="${item.idItem}">${item.nome}</label>
					</div>
					</td>
			      </tr>
			    </c:forEach>
			  </table>            
            <div id="btn" class="row">
	            <a href="/bring2me/postar" id="cancelarBtn" class="btn">Cancelar</a>
	            <button type="submit" id="salvarBtn" class="btn btn-primary">Salvar</button>
            </div>
         </form:form>
				
      </div>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <scipt src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
   </body>
</html>