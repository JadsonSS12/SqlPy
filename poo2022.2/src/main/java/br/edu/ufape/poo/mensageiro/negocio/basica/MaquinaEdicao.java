/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.edu.ufape.poo.mensageiro.negocio.basica;

import br.edu.ufape.poo.mensageiro.negocio.basica.Maquina;

/**
 *
 * @author Usuário
 */
public class MaquinaEdicao extends Maquina {
       private float precoHora;
       private String software;

    public float getPrecoHora() {
        return precoHora;
    }

    public void setPrecoHora(float precoHora) {
        this.precoHora = precoHora;
    }

    public String getSoftware() {
        return software;
    }

    public void setSoftware(String software) {
        this.software = software;
    }

}
