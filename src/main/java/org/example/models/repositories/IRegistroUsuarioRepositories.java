package org.example.models.repositories;

import org.example.models.entities.RegistroUsuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IRegistroUsuarioRepositories extends JpaRepository<RegistroUsuario, Integer> {
}
