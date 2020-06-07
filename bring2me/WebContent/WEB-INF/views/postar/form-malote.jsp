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
      <link href="resources/css/bring2me.css" rel="stylesheet">
	  
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
	       
	       $(document).ready(function modal(){
				document.getElementById('myBtn').style.display = 'none';
				if(document.getElementById('idMensagem').value != "") {
					document.getElementById("myBtn").click();
				}
			 });
			
			function redirect() {
		        window.location.href='/bring2me/postar';	
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
         <form:form action="salvar-malote" method="post" modelAttribute="malote">
            <div>
               <h4>Cadastro de Malote</h4>
            </div>
            <form:hidden id="idMalote" path="idMalote"/>
            <form:hidden id="idUsrRemetente" path="idUsrRemetente"/>
            <form:hidden id="idUsrDestinatario" path="idUsrDestinatario"/>
            <form:hidden id="itensMalote" value="${itensMalote}" path=""/>
            <form:hidden id="idMensagem" value="${mensagem}" path=""/>
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