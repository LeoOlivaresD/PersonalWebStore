package org.example.controllers;

import org.example.models.entities.Productos;
import org.example.models.services.ProductosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RestProductoController {
    @Autowired
    private ProductosService productosService;
    @RequestMapping (value = "/api/productos", headers = "Accept=application/json")
    public List<Productos> getProductos(){
        return productosService.readAll();
    }
}
