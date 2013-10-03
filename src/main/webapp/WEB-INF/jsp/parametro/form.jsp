<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="${pageContext.request.contextPath}/parametros" method="post">
  
	<c:if test="${not empty parametro.id}">
		<input type="hidden" name="parametro.id" value="${parametro.id}"/>
		<input type="hidden" name="_method" value="put"/>
	</c:if>

	<div class="field">
		Nome:<br />
	
		<input type="text" name="parametro.nome" value="${parametro.nome}"/>
	</div>
	
	<div class="field">
		Unidade medida:<br />
	
		<input type="text" name="parametro.unidadeMedida" value="${parametro.unidadeMedida}"/>
	</div>
	
	<div class="field">
		Lq:<br />
	
		<input type="text" name="parametro.lq" value="${parametro.lq}"/>
	</div>
	
	<div class="field">
		Metodo:<br />
	
		<input type="text" name="parametro.metodo" value="${parametro.metodo}"/>
	</div>
	
  <div class="actions">
	  <button type="submit">send</button>
	</div>
</form>

<a href="${pageContext.request.contextPath}/parametros">Back</a>
