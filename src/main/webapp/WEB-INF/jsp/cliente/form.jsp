<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="${pageContext.request.contextPath}/clientes" method="post">
  
	<c:if test="${not empty cliente.id}">
		<input type="hidden" name="cliente.id" value="${cliente.id}"/>
		<input type="hidden" name="_method" value="put"/>
	</c:if>

	<div class="field">
		Nome:<br />
	
		<input type="text" name="cliente.nome" value="${cliente.nome}"/>
	</div>
	
	<div class="field">
		Cpf cnpj:<br />
	
		<input type="text" name="cliente.cpfCnpj" value="${cliente.cpfCnpj}"/>
	</div>
	
	<div class="field">
		Tipo pessoa:<br />
	
		<input type="text" name="cliente.tipoPessoa" value="${cliente.tipoPessoa}"/>
	</div>
	
	<div class="field">
		Telefone:<br />
	
		<input type="text" name="cliente.telefone" value="${cliente.telefone}"/>
	</div>
	
	<div class="field">
		Email:<br />
	
		<input type="text" name="cliente.email" value="${cliente.email}"/>
	</div>
	
  <div class="actions">
	  <button type="submit">send</button>
	</div>
</form>

<a href="${pageContext.request.contextPath}/clientes">Back</a>
