package org.example.models.services;
import org.example.models.entities.RegistroUsuario;
import org.example.models.repositories.IRegistroUsuarioRepositories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RegistroUsuarioService {
    @Autowired
    private IRegistroUsuarioRepositories registroUsuarioRepositories;

    public RegistroUsuarioService() {
    }
    public void create(RegistroUsuario usuario){
    registroUsuarioRepositories.save(usuario);
    }
    public List<RegistroUsuario> readAll(){
    return registroUsuarioRepositories.findAll();
    }
    public Optional<RegistroUsuario> readOne(Integer idUsuario){
    return registroUsuarioRepositories.findById(idUsuario);
    }
    public void update(RegistroUsuario usuario){
        registroUsuarioRepositories.save(usuario);
    }
    public void delete(Integer idUsuario){
        registroUsuarioRepositories.deleteById(idUsuario);
    }
}
