package org.example.models.entities;

import javax.persistence.*;

@Entity
@Table(name = "productos")
public class Productos {
    @Id
    @Column(name = "id_prod")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idProd;
    private String nombre;
    private String precio;
    private String tipo;

    //Constructor con ID

    public Productos(Integer idProd, String nombre, String precio, String tipo) {
        this.idProd = idProd;
        this.nombre = nombre;
        this.precio = precio;
        this.tipo = tipo;
    }

    //Constructor sin ID

    public Productos(String nombre, String precio, String tipo) {
        this.nombre = nombre;
        this.precio = precio;
        this.tipo = tipo;
    }

    //Constructor vacio
    public Productos (){}

    public Integer getIdProd() {
        return idProd;
    }

    public void setIdProd(Integer idProd) {
        this.idProd = idProd;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Productos{" +
                "idProd=" + idProd +
                ", nombre='" + nombre + '\'' +
                ", precio='" + precio + '\'' +
                ", tipo='" + tipo + '\'' +
                '}';
    }
}
