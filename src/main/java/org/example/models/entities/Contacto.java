package org.example.models.entities;

import javax.persistence.*;

@Entity
@Table (name = "contacto")
public class Contacto {
    @Id
    @Column(name = "id_contacto")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idFormulario;
    private String nombre;
    private String email;
    private String comentario;

    //Constructor vacio
    public Contacto (){}

    //constructor con ID
    public Contacto(Integer idFormulario, String nombre, String email, String comentario) {
        this.idFormulario = idFormulario;
        this.nombre = nombre;
        this.email = email;
        this.comentario = comentario;
    }

    //Constructor sin ID

    public Contacto(String nombre, String email, String comentario) {
        this.nombre = nombre;
        this.email = email;
        this.comentario = comentario;
    }

    public Integer getIdFormulario() {
        return idFormulario;
    }

    public void setIdFormulario(Integer idFormulario) {
        this.idFormulario = idFormulario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    @Override
    public String toString() {
        return "Contacto{" +
                "idFormulario=" + idFormulario +
                ", nombre='" + nombre + '\'' +
                ", email='" + email + '\'' +
                ", comentario='" + comentario + '\'' +
                '}';
    }
}
