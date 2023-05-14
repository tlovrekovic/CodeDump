package com.crudproject.crudbackend.api.service;

import com.crudproject.crudbackend.api.model.Pokemon;

import java.util.List;

public interface IPokemonService {
    List<Pokemon> find();
    Pokemon create(Pokemon pokemon);
    Pokemon update (Long id, int quantity);
    void delete(Long id);
}
