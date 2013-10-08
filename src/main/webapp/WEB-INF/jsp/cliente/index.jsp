<head>
	<title>Listagem de Clientes</title>
</head>
<body>

	<a href="${pageContext.request.contextPath}/clientes/new"><img title="Novo cliente" src="imagens/novo_cliente.png"></a> 

	<table class="table table-hover">
		<caption><h3>Cadastro de clientes</h3></caption>
		<tr>
			<th></th>
			<th>Nome</th>
			<th>CPF/CPNJ</th>
			<th>Telefone</th>
			<th>Email</th>
			<th colspan="2">A&ccedil;&otilde;es</th>
		</tr>
	
		<c:forEach items="${clienteList}" var="cliente">
			<tr>
				<td></td>
				<td><a href="${pageContext.request.contextPath}/clientes/${cliente.id}">${cliente.nome}</a></td>
				<td>${cliente.cpfCnpj}</td>
				<td>${cliente.telefone}</td>
				<td>${cliente.email}</td>
				<td colspan="2">
					<a href="${pageContext.request.contextPath}/clientes/${cliente.id}/edit"><img src="imagens/editar.png" title="Editar registro"/></a>

					<a href="${pageContext.request.contextPath}/clientes/delete/${cliente.id}"><img src="imagens/excluir.png" title="Excluir registro"/></a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<br />
</body>