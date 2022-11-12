package org.example.models.repositories;

import org.example.models.entities.Contacto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IContactoRepositorie extends JpaRepository<Contacto , Integer> {
}
