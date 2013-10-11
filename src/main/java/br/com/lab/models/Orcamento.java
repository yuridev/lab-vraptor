package br.com.lab.models;

@javax.persistence.Entity
public class Orcamento extends Entity {

	private String numero;
	private Double valorTotal;


	public void setValorTotal(Double valorTotal) {
		this.valorTotal = valorTotal;
	}

	public Double getValorTotal() {
		return valorTotal;
	}

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

}
