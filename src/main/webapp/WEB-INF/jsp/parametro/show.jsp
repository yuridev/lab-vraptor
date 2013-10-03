<head>
	<title>Parametro [show]</title>
</head>
<body>
	<p>
		<b>Nome:</b>
		${parametro.nome}
	</p>
	<p>
		<b>Unidade medida:</b>
		${parametro.unidadeMedida}
	</p>
	<p>
		<b>Lq:</b>
		${parametro.lq}
	</p>
	<p>
		<b>Metodo:</b>
		${parametro.metodo}
	</p>

	<a href="${pageContext.request.contextPath}/parametros/${parametro.id}/edit">Edit</a>
	<a href="${pageContext.request.contextPath}/parametros">Back</a>
</body>