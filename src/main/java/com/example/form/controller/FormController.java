package com.example.form.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.form.controller.formulario.Form;

@Controller
@RequestMapping("/form")
public class FormController {

	@RequestMapping(value = {"/" , ""}, method = RequestMethod.GET)
	public ModelAndView carregaForm(Model model) {
		model.addAttribute("form", new Form());
		return new ModelAndView("form");
	}
	
	@RequestMapping(value = {"/",""} ,method = RequestMethod.POST)
	public ModelAndView recebeForm(@ModelAttribute("form") Form form, Model model) {
		model.addAttribute("msg", "O seu nome: " + form.getNome() + "<br>" + " " + "O seu sobrenome: "
							+ form.getSobrenome());
		return new ModelAndView("form");
	}
	
	
}
