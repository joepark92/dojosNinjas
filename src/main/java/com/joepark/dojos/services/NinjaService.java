package com.joepark.dojos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joepark.dojos.models.Ninja;
import com.joepark.dojos.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	private NinjaRepository ninjaRepository;
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	public void add(Ninja ninja) {
		ninjaRepository.save(ninja);
	}
	public List<Ninja> all() {
		return (List<Ninja>) ninjaRepository.findAll();
	}
}
