/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author THIAGO
 */
public class Lance {
    
    private String id;
    private float valorLance;
    
    public Lance(String id, float valorLance){
        this.id=id;
        this.valorLance=valorLance;
    }
    
    public String getId(){return this.id;}
    public void setId(String id){this.id=id;}
    public float getValorLance(){return valorLance;}
    public void setValorLance(float valorLance){this.valorLance=valorLance;}
}
