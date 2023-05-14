package com.crudproject.crudbackend.api.repository;

import com.crudproject.crudbackend.api.model.Pokemon;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PokemonRepository extends CrudRepository<Pokemon,Long> {

    List<Pokemon> findAllByOrderByIdAsc();

}
