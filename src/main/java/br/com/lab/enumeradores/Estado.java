package br.com.lab.enumeradores;

public enum Estado {
    
    GO("1", "Goias"),
    DF("2", "Distrito Federal");
    
    private String id;
    private String nome;

    private Estado(String id, String nome) {
        this.id = id;
        this.nome = nome;
    }
    
    public String getId() {
        return id;
    }
    
    public String getNome() {
        return nome;
    }
}
