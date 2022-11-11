package org.example.models.repositories;

import org.example.models.entities.RegistroUsuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IRegistroUsuarioRepositories extends JpaRepository<RegistroUsuario, Integer> {
}
