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
public class reporteActionForm extends org.apache.struts.action.ActionForm {
    
    private int idrepor;
    private String usuario;
    private String etiq;
    private String desc;
    
    public int getIdrepor() {
        return idrepor;
    }

    public void setIdrepor(int idrepor) {
        this.idrepor = idrepor;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEtiq() {
        return etiq;
    }

    public void setEtiq(String etiq) {
        this.etiq = etiq;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     *
     */
    public reporteActionForm() {
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
        if (getEtiq()== null || getEtiq().length() < 1) {
            errors.add("etiqvacio", new ActionMessage("reporte.error.etibligatorio"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getDesc()== null || getDesc().length() < 1) {
            errors.add("descvacio", new ActionMessage("reporte.error.desobligatorio"));
            // TODO: add 'error.name.required' key to your resources
        }
        /*if (getEdad()<=15) {
            errors.add("edadmenor", new ActionMessage("regalumno.error.edad"));
            // TODO: add 'error.name.required' key to your resources
        } */      
        return errors;
    }
}
