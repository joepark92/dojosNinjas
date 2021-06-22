package com.joepark.dojos.repositories;

import org.springframework.data.repository.CrudRepository;

import com.joepark.dojos.models.Ninja;

public interface NinjaRepository extends CrudRepository <Ninja, Long> {

}