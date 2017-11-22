/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.ArrayList;

/**
 *
 * @author Syane
 */
public class Leilao {
    int id;
    String descricaoDoProduto;
    float lanceminimo;
    ArrayList<Lance> lances = new ArrayList<>();
    boolean status;
    float valorLance = 0;
    
    public String getDescricaoDoProduto(){
        return this.descricaoDoProduto;
    }
    
    public void setDescricaoDoProduto(String descricao){
        this.descricaoDoProduto = descricao;
    }
    
    public float getLanceMinimo(){
        return this.lanceminimo;
    }
    
    public void setLanceMinimo(float lancem){
        this.lanceminimo = lancem;
    }
    
    public ArrayList getLances(){
        return this.lances;
    }
    
    public void addLance(Lance e){
        this.lances.add(e);
    }
    
    public void iniciar(){
        this.status = true;
    }
    
    public void fechar(){
        this.status = false;
    }
    
    public void DarLance(Usuario usuario){
        if((this.status == true)){
            Lance lance = new Lance();
            lance.id = 0;
            lance.pariticipante = usuario;
            if(valorLance == 0){
                lance.valorLance = this.lanceminimo + 10;
            }
            else{
                lance.valorLance = this.valorLance + 10;
                this.valorLance = lance.valorLance;
            }
            this.addLance(lance);
         }
        else{
            System.out.println("Lance não permitido!");
        }
    }
    
    public void ListarLances(){
        for(Lance e: this.lances){
            System.out.println("Usuario: "+e.pariticipante.nome + "Valor: " + e.valorLance);
        }
    }
}
