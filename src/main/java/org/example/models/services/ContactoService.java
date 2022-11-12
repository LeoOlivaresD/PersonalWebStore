package org.example.models.services;

import org.example.models.entities.Contacto;
import org.example.models.repositories.IContactoRepositorie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactoService {
    @Autowired
    private IContactoRepositorie contactoRepositorie;

    public ContactoService() {

    }
    public void create(Contacto contacto){
        contactoRepositorie.save(contacto);
    }
    public List<Contacto> readAll(){
        return contactoRepositorie.findAll();
    }
    public Optional<Contacto> readOne(Integer idFormulario){
        return contactoRepositorie.findById(idFormulario);
    }
    public void update(Contacto contacto){
        contactoRepositorie.save(contacto);
    }
    public void delete(Integer idFormulario){
        contactoRepositorie.deleteById(idFormulario);
    }
}
