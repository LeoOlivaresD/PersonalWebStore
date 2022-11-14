package org.example.models.services;

import org.example.models.entities.Contacto;
import org.example.models.entities.Productos;
import org.example.models.repositories.IProductosRepositorie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductosService {
    @Autowired
    private IProductosRepositorie iProductosRepositorie;
    public List<Productos> readAll(){
        return iProductosRepositorie.findAll();
    }
}
