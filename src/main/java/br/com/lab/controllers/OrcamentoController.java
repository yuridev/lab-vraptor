package br.com.lab.controllers;

import java.util.List;

import br.com.lab.models.Orcamento;
import br.com.lab.repositories.OrcamentoRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class OrcamentoController {

	private final Result result;
	private final OrcamentoRepository repository;
	
	private final Validator validator;
	
	public OrcamentoController(Result result, OrcamentoRepository repository, 
	Validator validator) {
		this.result = result;
		this.repository = repository;
	
		this.validator = validator;
	}
	
	@Get("/orcamentos")
	public List<Orcamento> index() {
		return repository.findAll();
	}
	
	@Post("/orcamentos")
	public void create(Orcamento orcamento) {
		validator.validate(orcamento);
		validator.onErrorUsePageOf(this).newOrcamento();
		repository.create(orcamento);
		result.redirectTo(this).index();
	}
	
	@Get("/orcamentos/new")
	public Orcamento newOrcamento() {
		return new Orcamento();
	}
	
	@Put("/orcamentos")
	public void update(Orcamento orcamento) {
		validator.validate(orcamento);
		validator.onErrorUsePageOf(this).edit(orcamento);
		repository.update(orcamento);
		result.redirectTo(this).index();
	}
	
	@Get("/orcamentos/{orcamento.id}/edit")
	public Orcamento edit(Orcamento orcamento) {
		
		return repository.find(orcamento.getId());
	}

	@Get("/orcamentos/{orcamento.id}")
	public Orcamento show(Orcamento orcamento) {
		return repository.find(orcamento.getId());
	}

	@Delete("/orcamentos/{orcamento.id}")
	public void destroy(Orcamento orcamento) {
		repository.destroy(repository.find(orcamento.getId()));
		result.redirectTo(this).index();  
	}
}