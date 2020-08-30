/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Mia
 */
public class usuarioActionForm extends org.apache.struts.action.ActionForm {
    
    private String nombre;
    private String nombreoficial;
    private String correo;
    private String contra;
    private int nivel;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreoficial() {
        return nombreoficial;
    }

    public void setNombreoficial(String nombreoficial) {
        this.nombreoficial = nombreoficial;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    /**
     *
     */
    public usuarioActionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getContra()== null || getContra().length() < 1) {
            errors.add("convacio", new ActionMessage("usuario.error.conobligatorio"));
            // TODO: add 'error.name.required' key to your resources
        }else{
            if(getContra().length()< 8){
                errors.add("conlongitud", new ActionMessage("usuario.error.conlongitud"));
            }
        }
        if (getNombre()== null || getNombre().length() < 1) {
            errors.add("usuvacio", new ActionMessage("usuario.error.usuobligatorio"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getNombreoficial()== null || getNombreoficial().length() < 1) {
            errors.add("novacio", new ActionMessage("usuario.error.nomobligatorio"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getCorreo()== null || getCorreo().length() < 1) {
            errors.add("corvacio", new ActionMessage("usuario.error.corobligatorio"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        /*if (getEdad()<=15) {
            errors.add("edadmenor", new ActionMessage("regalumno.error.edad"));
            // TODO: add 'error.name.required' key to your resources
        } */      
        return errors;
    }
}
