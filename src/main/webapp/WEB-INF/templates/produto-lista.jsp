<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
	    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"/>
	
	    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" rel="stylesheet"/>
	
	    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet"/>
	
	    <link href="<s:url value="/resources/css/style.css"/>" rel="stylesheet"/>
	
	    <title><s:message code="sistema.titulo" /></title>
	</head>
	
	<body>
		<nav class="navbar navbar-default navbar-fixed-top">
		    <div class="container">
		        <div class="navbar-header">
		            <button type="button" class="navbar-toggle collapsed"
		                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
		                    aria-controls="navbar">
		                <span class="sr-only">Toggle navigation</span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		            </button>
		
		            <a class="navbar-brand" href="<s:url value="/" />">ProdWorks</a>
		        </div>
		        <div id="navbar" class="collapse navbar-collapse">
		            <ul class="nav navbar-nav">
						<li>
							<a href="<s:url value="/produtos"/>">
								<s:message code="menu.produtos" />
							</a>
						</li>
		            </ul>
		            
		            <ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								AlgaWorks 
								<span class="caret"></span>
							</a>
							
							<ul class="dropdown-menu">
								<li><a href="http://www.algaworks.com" target="_blank">Site</a></li>
								<li><a href="http://www.facebook.com/algaworks" target="_blank">Facebook</a></li>
				                <li><a href="http://www.youtube.com/algaworks" target="_blank">YouTube</a></li>
				                <li><a href="http://github.com/algaworks" target="_blank">Github</a></li>
				                <li><a href="http://blog.algaworks.com/" target="_blank">Nosso Blog</a></li>
							</ul>
						</li>
		            </ul>
		        </div>
		    </div>
		</nav>
		
		<section class="container">
			<h3 class="page-header">
				<s:message code="produto-lista.pagina.titulo" />
			</h3>

			<s:url value="/produtos" var="acaoProdutos"/>
			
			<sf:form method="get" modelAttribute="produto" action="${acaoProdutos}">
				<div class="panel panel-default">
					<div class="panel-heading">
						<s:message code="produto-lista.form.titulo" />
					</div>
					
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-4">
								<div class="form-group">
									<label class="control-label" for="codigo">
										<s:message code="produto-lista.form.codigo" />: 
									</label>
									
									<sf:input path="id" cssClass="form-control" />
								</div>
							</div>
							
							<div class="col-sm-8">
								<div class="form-group">
									<label class="control-label" for="nome">
										<s:message code="produto-lista.form.nome" />: 
									</label>
									
									<sf:input path="nome" cssClass="form-control" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<button class="btn btn-default" type="submit">
								<span class="fa fa-search"></span>
								<s:message code="produto-lista.form.botao" />
							</button>
						</div>
					</div>
				</div>			
			</sf:form>						
			
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th><s:message code="produto-lista.tabela.titulo.codigo" /></th>
						<th><s:message code="produto-lista.tabela.titulo.nome" /></th>
						<th><s:message code="produto-lista.tabela.titulo.preco" /></th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${produtos}" var="produto">
						<tr>
							<td>${produto.id}</td>
							<td>${produto.nome}</td>
							<td>
								<fmt:formatNumber value="${produto.preco}" type="currency"/>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
		
		<div class="container">
	    	<hr />
	    	
		    <footer>
		    	<h4>Aula Thymeleaf e JSP</h4>
			</footer>	
		</div>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>		
	</body>
</html>
