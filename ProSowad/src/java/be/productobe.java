/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

import java.io.InputStream;

/**
 *
 * @author Mia
 */
public class productobe {
    private String codigo;
    private String nombre;
    private int stock;
    private int compromiso;
    private int precio;
    private int cantidad;
    private int fabricante;
    private int categoria;
    private InputStream img;

    public productobe() {
    }

    public productobe(String codigo, String nombre, int stock, int compromiso, int precio, int cantidad, int fabricante, int categoria, InputStream img) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.stock = stock;
        this.compromiso = compromiso;
        this.precio = precio;
        this.cantidad = cantidad;
        this.fabricante = fabricante;
        this.categoria = categoria;
        this.img = img;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCompromiso() {
        return compromiso;
    }

    public void setCompromiso(int compromiso) {
        this.compromiso = compromiso;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getFabricante() {
        return fabricante;
    }

    public void setFabricante(int fabricante) {
        this.fabricante = fabricante;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public InputStream getImg() {
        return img;
    }

    public void setImg(InputStream img) {
        this.img = img;
    }

    
    
}
