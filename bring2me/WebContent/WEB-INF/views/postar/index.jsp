<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	  <link href="resources/css/bring2me.css" rel="stylesheet">

	  <title>Malotes</title>	
		<script type="text/javascript">
			function tolltip() {
				  $('[data-toggle="tooltip"]').tooltip()
				};
			
			function openNewWindow(id) {	
				window.open("/bring2me/gerar-etiqueta?id="+id);
			};
		</script>
	</head>
	<body id="target">
		<div class="bgHome p-3 p-md-5 rounded">
			<div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
				<a href="/bring2me/home" id="imgHomeBtn">
			    	<img class="mb-2" id="logoBox" src="resources/imagens/icon/Bring2Me-Azul-B-logo.png" alt="" width="50%" height="50%">
			    </a>
			  </div>
			  <p>${etiqueta}</p>
		    <table class="table">
				    <thead>
				      <tr>
						<th>Código Rastreio</th>
						<th>Transportadora</th>
						<th>Remetente</th>
						<th>Destinatário</th>
						<th>Status</th>
						<th>Data Postagem</th>
						<th>Data prevista</th>
						<th>Data Entrega</th>
						<th></th>
						<th></th>
						<th></th>
				      </tr>
				    </thead>
				    <c:forEach items="${malotes}" var="item">
				    <tbody>
				      <tr>
						<td>${item.codigoRastreio}</td>
						<td>${item.tpTransporte}</td>
						<td>${item.remetente.nomeRazaoSocial}</td>
						<td>${item.destinatario.nomeRazaoSocial}</td>
						<td>${item.status}</td>
						<td>${item.dtPostagem}</td>
						<td>${item.dtPrevEntrega}</td>
						<td>${item.dtEntrega}</td>
						<td><a href="javaScript:{openNewWindow(${item.idMalote});}"><img class="mb-2" id="logoBox" src="resources/imagens/icon/etiqueta.png" alt="Etiqueta" width="16px" height="16px" data-toggle="tooltip" data-placement="top" title="Gerar etiqueta"></a></td>
						<c:if test="${item.status.equals('CRIADO')}">
							<td><a href="/bring2me/editar-malote?id=${item.idMalote}"><img class="mb-2" id="logoBox" src="resources/imagens/icon/edit.png"  alt="Edit" width="16px" height="16px" data-toggle="tooltip" data-placement="top" title="Editar"></a></td>
							<td><a href="/bring2me/deletar-malote?id=${item.idMalote	}"><img class="mb-2" id="logoBox" src="resources/imagens/icon/trash.png"  alt="Delete" width="16px" height="16px" data-toggle="tooltip" data-placement="top" title="Deletar"></a></td>
						</c:if>
				      </tr>
				    </c:forEach>
				  </table>
			  <div id="btn" class="row">
			  	<a href="/bring2me/home" id="voltarBtn" class="btn" style="margin:5px">Voltar</a>
				<a href="/bring2me/novo-malote" id="novoBtn" class="btn" style="margin:5px">Novo Malote</a>
			</div>
	    </div>
	</body>
</html>