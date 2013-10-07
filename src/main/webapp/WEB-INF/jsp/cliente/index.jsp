<head>
	<title>Listagem de Clientes</title>
</head>
<body>

<div class="container-fluid">


	<table class="table table-hover">
		<caption>Listagem de Clientes</caption>
		<tr>
			<th></th>
			<th>Nome</th>
			<th>Cpf/CPNJ</th>
			<th>Telefone</th>
			<th>Email</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
	
		<c:forEach items="${clienteList}" var="cliente">
			<tr>
				<td><a href="${pageContext.request.contextPath}/clientes/${cliente.id}">Visulizar</a></td>
				<td>${cliente.nome}</td>
				<td>${cliente.cpfCnpj}</td>
				<td>${cliente.telefone}</td>
				<td>${cliente.email}</td>
				<td><a href="${pageContext.request.contextPath}/clientes/${cliente.id}/edit">edit</a></td>
				<td>
					<a href="${pageContext.request.contextPath}/clientes/delete/${cliente.id}"><img src="imagens/excluir.png"/></a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<br />
	<a href="${pageContext.request.contextPath}/clientes/new">New Cliente</a> 
	<a href="${pageContext.request.contextPath}/">Voltar</a>
</div>
</body>