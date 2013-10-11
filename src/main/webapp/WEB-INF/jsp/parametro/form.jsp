<form class="form-horizontal" action="${pageContext.request.contextPath}/parametros" method="post" >
	<fieldset>

		<!-- Form Name -->
		<legend>
			Cadastro de param&ecirc;tros 
			<a href="${pageContext.request.contextPath}/parametros"
				class="btn btn-inverse btn-mini pull-right"><i
				class="icon-white icon-arrow-left"></i> Voltar</a>
		</legend>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="parametro.nome" name="parametro.nome" type="text"
					placeholder="Nome" class="input-xlarge" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="parametro.unidadeMedida" name="parametro.unidadeMedida"
					type="text" placeholder="Unidade de medida" class="input-xlarge"
					required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="parametro.lq" name="parametro.lq" type="text"
					placeholder="LQ" class="input-xlarge" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="parametro.metodo" name="parametro.metodo" type="text"
					placeholder="M&eacute;todo" class="input-xlarge" required="">

			</div>
		</div>

		<!-- Button -->
		<div class="control-group">
			<div class="controls">
				<button class="btn btn-success">Salvar</button>
			</div>
		</div>

	</fieldset>
</form>
