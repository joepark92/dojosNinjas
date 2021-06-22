package com.joepark.dojos.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.joepark.dojos.models.Ninja;
import com.joepark.dojos.services.DojoService;
import com.joepark.dojos.services.NinjaService;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {
	
	@Autowired
	private NinjaService ninjaService;
	@Autowired
	private DojoService dojoService;
	public NinjaController(NinjaService ninjaService, DojoService dojoService) {
		this.ninjaService = ninjaService;
		this.dojoService = dojoService;
	}
	@RequestMapping("/new")
	public String show(Model model) {
		model.addAttribute("ninja", new Ninja());
		model.addAttribute("dojos", dojoService.all());
		return "createninja.jsp";
	}
	@PostMapping("/new")
	public String add(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, RedirectAttributes errors) {
		if(result.hasErrors()) {
			errors.addFlashAttribute("errors", result.getAllErrors());
			return "redirect:/ninjas/new";
		} else {
			ninjaService.add(ninja);
			return "redirect:/";
		}
	}
}
