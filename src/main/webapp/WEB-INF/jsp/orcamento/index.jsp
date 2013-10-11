<head>
	<title>Orcamento [index]</title>
</head>
<body>
	<h1>Listing Orcamentos</h1>

	<table>
		<tr>
			<th>Nome</th>
			<th>Valor total</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>

		<c:forEach items="${orcamentoList}" var="orcamento">
			<tr>
				<td>${orcamento.nome}</td>
				<td>${orcamento.valorTotal}</td>
				<td><a href="${pageContext.request.contextPath}/orcamentos/${orcamento.id}">show</a></td>
				<td><a href="${pageContext.request.contextPath}/orcamentos/${orcamento.id}/edit">edit</a></td>
				<td>
					<form action="${pageContext.request.contextPath}/orcamentos/${orcamento.id}" method="post">
						<input type="hidden" name="_method" value="delete"/>
						<button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<a href="${pageContext.request.contextPath}/orcamentos/new">New Orcamento</a> 
</body>