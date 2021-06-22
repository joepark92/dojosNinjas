package com.joepark.dojos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joepark.dojos.models.Dojo;
import com.joepark.dojos.repositories.DojoRepository;

@Service
public class DojoService {
	@Autowired
	private DojoRepository dojoRepository;
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}
	public void add(Dojo dojo) {
		dojoRepository.save(dojo);
	}
	public List<Dojo> all() {
		return (List<Dojo>) dojoRepository.findAll();
	}
	public Dojo getOne(Long id) {
		return dojoRepository.findById(id).orElse(null);
	}
	public void deleteDojo(Long id) {
		dojoRepository.deleteById(id);
	}
}
