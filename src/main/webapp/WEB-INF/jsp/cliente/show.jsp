<head>
	<title>Cliente [show]</title>
</head>
<body>
	<p>
		<b>Nome:</b>
		${cliente.nome}
	</p>
	<p>
		<b>Cpf cnpj:</b>
		${cliente.cpfCnpj}
	</p>
	<p>
		<b>Tipo pessoa:</b>
		${cliente.tipoPessoa}
	</p>
	<p>
		<b>Telefone:</b>
		${cliente.telefone}
	</p>
	<p>
		<b>Email:</b>
		${cliente.email}
	</p>

	<a href="${pageContext.request.contextPath}/clientes/${cliente.id}/edit">Edit</a>
	<a href="${pageContext.request.contextPath}/clientes">Back</a>
</body>