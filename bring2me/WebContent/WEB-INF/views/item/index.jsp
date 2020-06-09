<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link href="resources/css/bring2me.css" rel="stylesheet">
	
	<title>Itens</title>
	
	<script type="text/javascript">
		function tooltip() {
			$('[data-toggle="tooltip"]').tooltip()
		}
		
		$(document).ready(function modal(){
			document.getElementById('myBtn').style.display = 'none';
			document.getElementById('idMensagem').style.display = 'none';
			if(document.getElementById('idMensagem').value != "") {
				document.getElementById("myBtn").click();
			}
		 });
	</script>
	</head>
	<body>
		<div class="bgHome p-3 p-md-5 rounded">
			<div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
				<a href="/bring2me/home" id="imgHomeBtn">
			    	<img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
			    </a>
			  </div>
			<c:if test="${not empty itemLista}">
			    <table class="table">
			    	<caption>Lista dos Itens cadastrados</caption>
					    <thead>
					      <tr>
							<th id="nome">Nome</th>
							<th id="descricao">Descrição</th>
							<th id="quantidade">Quantidade</th>
							<th id="valor">Valor</th>
							<th id="peso">Peso</th>
							<th id="acao"></th>
							<th id="acao"></th>
					      </tr>
					    </thead>
					    <c:forEach items="${itemLista}" var="item">
					    <tbody>
					      <tr>
							<td>${item.nome}</td>
							<td>${item.descricao}</td>
							<td>${item.quantidade}</td>
							<td>${item.valor}</td>
							<td>${item.peso}</td>				
							<td><a href="/bring2me/editar-item?id=${item.idItem}"><img class="mb-2" id="logoBox" src="resources/imagens/icon/edit.png"  alt="Edit" width="16px" height="16px" data-toggle="tooltip" data-placement="top" title="Editar"></a></td>
							<td><a href="/bring2me/deletar-item?id=${item.idItem}"><img class="mb-2" id="logoBox" src="resources/imagens/icon/trash.png"  alt="Delete" width="16px" height="16px" data-toggle="tooltip" data-placement="top" title="Deletar"></a></td>
					      </tr>
					    </c:forEach>
					  </table>
				  </c:if>
				  <div id="btn" class="row">
				  	<a href="/bring2me/home" id="voltarBtn" class="btn" style="margin:5px">Voltar</a>
					<a href="/bring2me/novo-item" id="novoBtn" class="btn" style="margin:5px">Novo Item</a>
					</div>
	    </div>
	    
	    <!-- Button trigger modal -->
	    <input id="idMensagem" value="${mensagem}">
		<button id="myBtn" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"></button>
		
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
		        <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
		      </div>
		    </div>
		  </div>
		</div>
	</body>
</html>