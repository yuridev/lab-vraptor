<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="${pageContext.request.contextPath}/orcamentos" method="post">
  
	<c:if test="${not empty orcamento.id}">
		<input type="hidden" name="orcamento.id" value="${orcamento.id}"/>
		<input type="hidden" name="_method" value="put"/>
	</c:if>

	<div class="field">
		Nome:<br />
	
		<input type="text" name="orcamento.nome" value="${orcamento.nome}"/>
	</div>
	
	<div class="field">
		Valor total:<br />
	
		<input type="text" name="orcamento.valorTotal" value="${orcamento.valorTotal}"/>
	</div>
	
  <div class="actions">
	  <button type="submit">send</button>
	</div>
</form>

<a href="${pageContext.request.contextPath}/orcamentos">Back</a>
