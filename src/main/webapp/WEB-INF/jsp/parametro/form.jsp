<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<a href="${pageContext.request.contextPath}/parametros" class="pull-rigth"><img title="Voltar" src="${pageContext.request.contextPath}/imagens/voltar.png"/></a>
<h3>Cadastro de param&ecirc;tros</h3>
<div align="center" >
	<form action="${pageContext.request.contextPath}/parametros" method="post" >
	  
		<c:if test="${not empty parametro.id}">
			<input type="hidden" name="parametro.id" value="${parametro.id}"/>
			<input type="hidden" name="_method" value="put"/>
		</c:if>
	
			<input type="text" name="parametro.nome" value="${parametro.nome}" placeholder="Nome"/><br/>
		
			<input type="text" name="parametro.unidadeMedida" value="${parametro.unidadeMedida}" placeholder="Unidade medida"/><br/>
		
			<input type="text" name="parametro.lq" value="${parametro.lq}" placeholder="LQ"/><br/>
	
		
			<input type="text" name="parametro.metodo" value="${parametro.metodo}" placeholder="M&eacute;todo"/><br/>
		
		  <button type="submit" class="btn" style="margin: 8px">Salvar</button>
	</form>
</div>
