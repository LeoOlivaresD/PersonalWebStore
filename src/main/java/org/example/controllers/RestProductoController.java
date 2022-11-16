package org.example.controllers;

import org.example.models.entities.Productos;
import org.example.models.services.ProductosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class RestProductoController {
    @Autowired
    private ProductosService productosService;

    @GetMapping(value = "/api/readAll", headers = "Accept=application/json")
    public List<Productos> getProductos() {
        return productosService.readAll();
    }

    @PostMapping(value = "/api/create", headers = "Accept=application/json")
    public void crear(@RequestBody Productos productos) {
        productosService.create(productos);
    }
    @GetMapping(value = "/api/readOne/{id}")
    public Optional<Productos>readOne(@PathVariable("id")Integer idProd){
        return productosService.readOne(idProd);
    }
    @PutMapping(value = "/api/update")
    public void update(@RequestBody Productos productos){
        productosService.update(productos);
    }
    @DeleteMapping(value = "/api/delete/{id}")
    public void delete(@PathVariable ("id")Integer idProd){
        productosService.delete(idProd);
    }
}
