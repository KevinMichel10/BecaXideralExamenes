package com.client.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.client.rest.model.Estudiante;
import com.client.rest.service.EstudianteService;

@Controller
@RequestMapping("/estudiante")
public class EstudianteController {

	// necesitamos inyectar nuestro servicio al cliente
	@Autowired
	private EstudianteService estudianteService;
	
	@GetMapping("/list")
	public String listEstudiante(Model theModel) {
		
		// obtener estudiante del servicio
		List<Estudiante> theEstudiante = estudianteService.getEstudiante();
				
		// Agregar los estudiantes al modelo
		theModel.addAttribute("estudiante", theEstudiante);
		
		return "list-estudiante";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// crea el atributo del modelo para vincular los datos del formulario
		Estudiante theEstudiante = new Estudiante();
		
		theModel.addAttribute("estudiante", theEstudiante);
		
		return "estudiante-form";
	}
	
	@PostMapping("/saveEstudiante")
	public String saveEstudiante(@ModelAttribute("estudiante") Estudiante theEstudiante) {
		
		// Guarda al estudiante usando nuestro servicio
		estudianteService.saveEstudiante(theEstudiante);	
		
		return "redirect:/estudiante/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("estudianteId") int theId,
									Model theModel) {
	
		// Obtener al estudiante de nuestro servicio
		Estudiante theEstudiante = estudianteService.getEstudiante(theId);	
		
		// establece el cliente como un atributo del modelo para completar previamente el formulario
		theModel.addAttribute("estudiante", theEstudiante);
		
		// enviar a nuestro formulario	
		return "estudiante-form";
	}
	
	@GetMapping("/delete")
	public String deleteEstudiante(@RequestParam("estudianteId") int theId) {
		
		// eliminar al estudiante
		estudianteService.deleteEstudiante(theId);
		
		return "redirect:/estudiante/list";
	}
}










