<head>
	<title>Cliente [index]</title>
</head>
<body>
	<h1>Listing Clientes</h1>

	<table>
		<tr>
			<th>Nome</th>
			<th>Cpf cnpj</th>
			<th>Tipo pessoa</th>
			<th>Telefone</th>
			<th>Email</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>

		<c:forEach items="${clienteList}" var="cliente">
			<tr>
				<td>${cliente.nome}</td>
				<td>${cliente.cpfCnpj}</td>
				<td>${cliente.tipoPessoa}</td>
				<td>${cliente.telefone}</td>
				<td>${cliente.email}</td>
				<td><a href="${pageContext.request.contextPath}/clientes/${cliente.id}">show</a></td>
				<td><a href="${pageContext.request.contextPath}/clientes/${cliente.id}/edit">edit</a></td>
				<td>
					<form action="${pageContext.request.contextPath}/clientes/${cliente.id}" method="post">
						<input type="hidden" name="_method" value="delete"/>
						<button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<a href="${pageContext.request.contextPath}/clientes/new">New Cliente</a> 
</body>