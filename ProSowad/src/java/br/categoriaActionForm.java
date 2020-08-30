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
public class categoriaActionForm extends org.apache.struts.action.ActionForm {
    
    private int codigo;
    private String nomcodigo;


    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNomcodigo() {
        return nomcodigo;
    }

    public void setNomcodigo(String nomcodigo) {
        this.nomcodigo = nomcodigo;
    }

    /**
     *
     */
    public categoriaActionForm() {
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
        if (getNomcodigo()== null || getNomcodigo().length() < 1) {
            errors.add("dnivacio", new ActionMessage("categoria.error.dniobligatorio"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }
}
