package br.com.lab.models;

@javax.persistence.Entity
public class Parametro extends Entity {

	private String nome;
	private String unidadeMedida;
	private String lq;
	private String metodo;

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setUnidadeMedida(String unidadeMedida) {
		this.unidadeMedida = unidadeMedida;
	}

	public String getUnidadeMedida() {
		return unidadeMedida;
	}

	public void setLq(String lq) {
		this.lq = lq;
	}

	public String getLq() {
		return lq;
	}

	public void setMetodo(String metodo) {
		this.metodo = metodo;
	}

	public String getMetodo() {
		return metodo;
	}

}
