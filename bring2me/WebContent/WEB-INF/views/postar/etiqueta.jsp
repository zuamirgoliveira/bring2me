<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
   </body>
</html>