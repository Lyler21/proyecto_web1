/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.categoriabe;
import buscador.buscador;
import dao.categoriadao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Mia
 */
public class categoriaAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private categoriaActionForm formulario;
    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        formulario = (categoriaActionForm) form;
        categoriabe e = new categoriabe();
        e.setCodigo(formulario.getCodigo());
        e.setNomcodigo(formulario.getNomcodigo());
        
        ActionForward fwd = new ActionForward();
        ActionErrors ne = new ActionErrors();
        // la siguiente linea se mantiene en tanto se implemente los dao
        boolean existe;
        existe = new buscador().practica(formulario.getNomcodigo());
        if(existe){
            ne.add("catduplicado", new ActionMessage("categoria.error.nomobligatorio"));
            saveErrors(request, ne);
            fwd=mapping.getInputForward();
        }else{
            // invoca al dao para registrar el alumno en la base de datos
            categoriadao gt = new categoriadao();
            gt.registrar(e);
            fwd=mapping.getInputForward();
        }
        return fwd;
    }
}
