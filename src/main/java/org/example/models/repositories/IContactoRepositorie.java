package org.example.models.repositories;

import org.example.models.entities.Contacto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IContactoRepositorie extends JpaRepository<Contacto , Integer> {
}
