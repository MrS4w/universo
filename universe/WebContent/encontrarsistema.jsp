<%@page import="java.util.ArrayList"%>
<%@page import="br.model.SistemasPlanetarios"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.html"%>

<%
	SistemasPlanetarios sp = (SistemasPlanetarios) request.getSession().getAttribute("sistemaencontrado");
	if (sp == null) {
		out.println("<h3 class='center white-text'>Não há sistemas com esse nome!</h3>");
	 %>
<div class="header center white-text">
	<h7>Clique no botão abaixo para voltar para a listagem:</h7><br>
	<a type="button" href="index?action=ListarSistema" class="blue-grey darken-4 waves-effect waves-light btn"><i class="large material-icons">arrow_back</i></a>
</div>
<%}else {
	out.println("<h3 class='white-text'>Sistema encontrado:</h3>");
%>

<style>
	table,
	td,
	th {
		border: solid 1px #000;
		padding: 5px;
	}

	td {
		width: 10%;
	}
</style>

<table class='header center white-text'>
	<tr class="green darken-4">
		<th>Nome</th>
		<th>Posição</th>
		<th>Dimensão</th>
		<th>Constelação</th>
	</tr>
	<%
		out.println("<tr>");
		out.println("<td>"+sp.getNome()+"</td>");
		out.println("<td>"+sp.getPosicao()+"</td>");
		out.println("<td>"+sp.getDimensao()+"</td>");
		out.println("<td>"+sp.getConstelacao()+"</td>");
		out.println("</tr>");
}		
	%>
</table>

<!-- Footer -->
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<footer class="ftr page-footer blue-grey darken-4">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">Descri&ccedil;&atilde;o:</h5>
				<p class="grey-text text-lighten-4">Projeto acad&ecirc;mico para
					a disciplina de desenvolvimento de software.</p>
			</div>
			<div class="col l3 s12">
				<h5 class="white-text">Contatos:</h5>
				<ul>
					<li><a class="white-text" href="https://github.com/SoldumaPraia" target="blank"> <img src="img/gh.png" width="15px"
							 height="15px">Patrick Brass
						</a></li>
					<li><a class="white-text" href="https://github.com/MrS4w" target="blank"> <img src="img/gh.png" width="15px"
							 height="15px">Victor Silva
						</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<div class="container">&copy; 2018 - Victor Silva and Patrick
			Brass</div>
	</div>
</footer>

<!--  Scripts-->
<script src="js/jquery.js"></script>
<script src="js/materialize.min.js"></script>
<script src="js/init.js"></script>

</body>

</html>