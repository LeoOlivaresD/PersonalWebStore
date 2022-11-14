package org.example.models.repositories;

import org.example.models.entities.Productos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IProductosRepositorie extends JpaRepository <Productos, Integer> {
}
