/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.util.ArrayList;

/**
 *
 * @author THIAGO
 */
public class Leilao {
    
    private String descricao;
    private float lanceMinimo;
    private ArrayList<Lance> lances;
    private boolean status;
    private float valorLance;
    
    public Leilao(String descricao, float lanceMinimo){
        lances=new ArrayList<>();
        this.descricao=descricao;
        this.lanceMinimo=lanceMinimo;
        iniciar();
    }
    
    public void darLance(String id, float valorLance){
        if(valorLance > this.lanceMinimo){
            if(valorLance > this.valorLance)
                this.valorLance = valorLance;
            Lance l = new Lance(id,valorLance);
            lances.add(l);
        }
    }
    
    public void iniciar(){this.status=true;}
    public void fechar(){this.status=false;}
    
    public String getDescricao(){return this.descricao;}
    public void setDescricao(String descricao){this.descricao=descricao;}
    public float getLanceMinimo(){return this.lanceMinimo;}
    public void setLanceMinimo(float lanceMinimo){this.lanceMinimo=lanceMinimo;}
    public boolean getStatus(){return this.status;}
    public void setStatus(boolean status){this.status=status;}
    public float getValorLance(){return this.valorLance;}
    public void setValorLance(float valorLance){this.valorLance=valorLance;}
    
    
    
}
