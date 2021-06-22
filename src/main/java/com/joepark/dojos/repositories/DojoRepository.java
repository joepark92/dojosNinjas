package com.joepark.dojos.repositories;

import org.springframework.data.repository.CrudRepository;

import com.joepark.dojos.models.Dojo;

public interface DojoRepository extends CrudRepository <Dojo, Long> {
}