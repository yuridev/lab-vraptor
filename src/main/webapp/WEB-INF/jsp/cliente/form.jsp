<script>
	$(document).ready(function(){
		$('.cpf').mask('000.000.000-00', {reverse: true});
	});
</script>

<form class="form-horizontal"
	action="${pageContext.request.contextPath}/clientes" method="post">
	<c:if test="${not empty cliente.id}">
		<input type="hidden" name="cliente.id" value="${cliente.id}" />
		<input type="hidden" name="_method" value="put" />
	</c:if>
	<fieldset>

		<!-- Form Name -->
		<legend>
			Cadastro de clientes <a
				href="
				${pageContext.request.contextPath}/clientes"
				class="btn btn-inverse btn-mini pull-right"><i
				class="icon-white icon-arrow-left"></i> Voltar</a>
		</legend>

		<!-- Multiple Radios (inline) -->
		<div class="control-group">
			<div class="controls">
				<label class="radio inline" for="cliente.tipoPessoa-0"> <input
					type="radio" name="cliente.tipoPessoa" id="cliente.tipoPessoa-0"
					value="PF" required=""> PF
				</label> <label class="radio inline" for="cliente.tipoPessoa-1"> <input
					type="radio" name="cliente.tipoPessoa" id="cliente.tipoPessoa-1"
					value="PJ"> PJ
				</label>
			</div>
		</div>
		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="cliente.nome" name="cliente.nome" type="text"
					placeholder="Nome" class="input-xlarge" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="cliente.cpfCnpj" name="cliente.cpfCnpj" type="text"
					placeholder="CPF/CNPJ" class="input-xlarge cpf" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="cliente.telefone" name="cliente.telefone" type="text"
					placeholder="Telefone" class="input-xlarge" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="cliente.email" name="cliente.email" type="text"
					placeholder="Email" class="input-xlarge" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="cliente.endereco" name="cliente.endereco" type="text"
					placeholder="Endere&ccedil;o" class="input-xxlarge" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="control-group">
			<div class="controls">
				<input id="cliente.cidade" name="cliente.cidade" type="text"
					placeholder="Cidade" class="input-xlarge" required="">

			</div>
		</div>

		<!-- Select Basic -->
		<div class="control-group">
			<div class="controls">
				<select id="cliente.estado" name="cliente.estado"
					class="input-xlarge" required="">
					<option value="0">Selecione</option>
					<c:forEach items="${estadosList}" var="estado">
						<option value="${estado}">${estado.nome}</option>
					</c:forEach>
				</select>
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
