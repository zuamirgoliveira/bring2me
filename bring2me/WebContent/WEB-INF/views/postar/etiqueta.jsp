<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
      		function imprimir() {
      			window.print();
			}
      </script>
  
   </head>
   <body>
   </head>
	<body>
		<div class="bgHome p-3 p-md-5 rounded">
			<div class="home-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-right" style="width: 500px;">
				<div id="target">
					<div class="border text-left" style="margin: 10px; padding: 20px; width: 500px;">
						<h3><b>DESTINATÁRIO</b></h3>
						<h6><b>${nomeDest}</b></h6>
			      		${logradouroDest}, nº ${numeroDest} - ${complementoDest} <br>
			      		${bairroDest}, ${cidadeDest} - ${estadoDest} <br>
			      		Cep: ${cepDest}
					</div>
					
					<div class="border text-left" style="margin: 10px; padding: 20px; width: 500px;">
						<h3><b>REMETENTE</b></h3>
						<h6><b>${nomeReme}</b></h6>
			      		${logradouroReme}, nº ${numeroReme} - ${complementoReme} <br>
			      		${bairroReme}, ${cidadeReme} - ${estadoReme} <br>
			      		Cep: ${cepReme}
					</div>
				</div>
				<button class="btn" onclick="imprimir()">Imprimir</button>
				
			</div>
		</div>
   				
   
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <scipt src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
   </body>
</html>