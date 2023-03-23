package org.example.models.services;
import org.example.models.entities.Productos;
import org.example.models.repositories.IProductosRepositorie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ProductosService {
    @Autowired
    private IProductosRepositorie productosRepositorie;
    public List<Productos> readAll(){
        return productosRepositorie.findAll();
    }
    public void create(Productos productos){
        productosRepositorie.save(productos);
    }
    public Optional<Productos> readOne(Integer idProd){
        return productosRepositorie.findById(idProd);
    }
    public void update(Productos productos){
        productosRepositorie.save(productos);
    }
    public void delete(Integer idProd){
        productosRepositorie.deleteById(idProd);
    }
}
