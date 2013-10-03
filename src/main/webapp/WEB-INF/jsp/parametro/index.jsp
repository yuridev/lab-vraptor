<head>
	<title>Parametro [index]</title>
</head>
<body>
	<h1>Listing Parametros</h1>

	<table>
		<tr>
			<th>Nome</th>
			<th>Unidade medida</th>
			<th>Lq</th>
			<th>Metodo</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>

		<c:forEach items="${parametroList}" var="parametro">
			<tr>
				<td>${parametro.nome}</td>
				<td>${parametro.unidadeMedida}</td>
				<td>${parametro.lq}</td>
				<td>${parametro.metodo}</td>
				<td><a href="${pageContext.request.contextPath}/parametros/${parametro.id}">show</a></td>
				<td><a href="${pageContext.request.contextPath}/parametros/${parametro.id}/edit">edit</a></td>
				<td>
					<form action="${pageContext.request.contextPath}/parametros/${parametro.id}" method="post">
						<input type="hidden" name="_method" value="delete"/>
						<button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<a href="${pageContext.request.contextPath}/parametros/new">New Parametro</a> 
</body>