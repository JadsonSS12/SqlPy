package br.edu.ufape.poo.mensageiro.negocio.cadastro.exception;

public class ProdutoDuplicadoException extends Exception {

    public ProdutoDuplicadoException() {
        super("Produto já existe na base de dados.");
    }

    public ProdutoDuplicadoException(String mensagem) {
        super(mensagem);
    }
}