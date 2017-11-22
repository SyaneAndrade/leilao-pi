/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author Syane
 */
public class Lance {
    int id;
    float valorLance;
    Usuario pariticipante;
    
    public int getId(){
        return this.id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public void setValorLance(float valor){
        this.valorLance = valor;
    }
    
    public float getValorLance(){
        return this.valorLance;
    }
}
