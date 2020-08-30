/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.reporte;
import buscador.buscador;
import dao.reportedao;
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
public class reporteAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private reporteActionForm formulario;

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
        formulario = (reporteActionForm) form;
        reporte e = new reporte();
        reportedao nump = new reportedao();
        int s =nump.id_incre();
        e.setIdrepor(s);
        e.setUsuario(formulario.getUsuario());
        e.setEtiq(formulario.getEtiq());
        e.setDesc(formulario.getDesc());
        
        ActionForward fwd = new ActionForward();
        ActionErrors ne = new ActionErrors();
        // la siguiente linea se mantiene en tanto se implemente los dao
        boolean existe;
        existe = new buscador().practicau(formulario.getUsuario());
        if(existe){
            ne.add("reporteerror", new ActionMessage("reporte.error.usuario"));
            saveErrors(request, ne);
            fwd=mapping.getInputForward();
        }else{
            // invoca al dao para registrar el alumno en la base de datos
            reportedao gt = new reportedao();
            gt.registrar(e);
            fwd=mapping.getInputForward();         
        }
          return fwd;
    }
}
