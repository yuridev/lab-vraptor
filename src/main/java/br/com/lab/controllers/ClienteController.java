package br.com.lab.controllers;

import java.util.List;

import br.com.lab.models.Cliente;
import br.com.lab.repositories.ClienteRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class ClienteController {

	private final Result result;
	private final ClienteRepository repository;
	
	private final Validator validator;
	
	public ClienteController(Result result, ClienteRepository repository, 
	Validator validator) {
		this.result = result;
		this.repository = repository;
	
		this.validator = validator;
	}
	
	@Get("/clientes")
	public List<Cliente> index() {
		return repository.findAll();
	}
	
	@Post("/clientes")
	public void create(Cliente cliente) {
		validator.validate(cliente);
		validator.onErrorUsePageOf(this).newCliente();
		repository.create(cliente);
		result.redirectTo(this).index();
	}
	
	@Get("/clientes/new")
	public Cliente newCliente() {
		return new Cliente();
	}
	
	@Put("/clientes")
	public void update(Cliente cliente) {
		validator.validate(cliente);
		validator.onErrorUsePageOf(this).edit(cliente);
		repository.update(cliente);
		result.redirectTo(this).index();
	}
	
	@Get("/clientes/{cliente.id}/edit")
	public Cliente edit(Cliente cliente) {
		
		return repository.find(cliente.getId());
	}

	@Get("/clientes/{cliente.id}")
	public Cliente show(Cliente cliente) {
		return repository.find(cliente.getId());
	}

	@Get("/clientes/delete/{cliente.id}")
	public void destroy(Cliente cliente) {
		repository.destroy(repository.find(cliente.getId()));
		result.redirectTo(this).index();  
	}
}