<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		<div class="alert alert-error">
			${error.category} - ${error.message}
		</div>
	</c:forEach>
</c:if>

<a href="${pageContext.request.contextPath}/clientes" class="pull-rigth"><img title="Voltar" src="${pageContext.request.contextPath}/imagens/voltar.png"/></a>

<h3>Cadastro de clientes</h3>
<div align="center" >
	<form action="${pageContext.request.contextPath}/clientes" method="post" >
  
	<c:if test="${not empty cliente.id}">
		<input type="hidden" name="cliente.id" value="${cliente.id}" />
		<input type="hidden" name="_method" value="put"/>
	</c:if>
	
		<input type="text" name="cliente.nome" value="${cliente.nome}" placeholder="Nome"/> <br/>
	
		<input type="text" name="cliente.cpfCnpj" value="${cliente.cpfCnpj}" placeholder="CPF/CNPJ"/><br/>
	
		<input type="text" name="cliente.tipoPessoa" value="${cliente.tipoPessoa}" placeholder=""/><br/>
	
		<input type="text" name="cliente.telefone" value="${cliente.telefone}" placeholder="Telefone"/><br/>
	
		<input type="text" name="cliente.email" value="${cliente.email}" placeholder="Email"/><br/>
		
	  	<button type="submit" class="btn" style="margin: 8px">Salvar</button>
	</form>
</div>

