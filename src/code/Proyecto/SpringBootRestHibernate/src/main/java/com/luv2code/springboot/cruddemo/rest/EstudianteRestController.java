package com.luv2code.springboot.cruddemo.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.luv2code.springboot.cruddemo.entity.Estudiante;
import com.luv2code.springboot.cruddemo.service.EstudianteService;

@RestController
@RequestMapping("/api")
public class EstudianteRestController {
	//Se inyecta el contolor en la capa de servicios
	private EstudianteService estudianteService;
	
	@Autowired
	public EstudianteRestController(EstudianteService theEstudianteService) {
		estudianteService = theEstudianteService;
	}
	
	// expose "/estudiante" y regresa una lista de estudiantes
	@GetMapping("/estudiante")
	public List<Estudiante> findAll() {
		return estudianteService.findAll();
	}

	//Añadir mapping para GET /estudiante/{estudianteId}
	@GetMapping("/estudiante/{estudianteId}")
	public Estudiante getEstudiante(@PathVariable int estudianteId) {
		
		Estudiante theEstudiante = estudianteService.findById(estudianteId);
		
		if (theEstudiante == null) {
			throw new RuntimeException("Estudiante id not found - " + estudianteId);
		}
		
		return theEstudiante;
	}
	

	//Añadir mapping para POST /estudiante- agrega un nuevo estudiante
	@PostMapping("/estudiante")
	public Estudiante addEstudiante(@RequestBody Estudiante theEstudiante) {
		
		// también en caso de que pasen una identificación en JSON ... establezca la identificación en 0
		// esto es para forzar un guardado del nuevo elemento... en lugar de actualizar
		theEstudiante.setId(0);
		
		estudianteService.save(theEstudiante);
		
		return theEstudiante;
	}
	
	//Añadir mapping para PUT /estudiante- actualiza un estudiante existente
	
	@PutMapping("/estudiante")
	public Estudiante updateEstudiante(@RequestBody Estudiante theEstudiante) {
		
		estudianteService.save(theEstudiante);
		
		return theEstudiante;
	}
	
	// añadir mapping para eliminar /estudiante/{estudianteId} - eliminar estudiante
	
	@DeleteMapping("/estudiante/{estudianteId}")
	public String deleteEstudiante(@PathVariable int estudianteId) {
		
		Estudiante tempEstudiante = estudianteService.findById(estudianteId);
		
		// Lanzar excepción si es nulo
		
		if (tempEstudiante == null) {
			throw new RuntimeException("Estudiante id not found - " + estudianteId);
		}
		
		estudianteService.deleteById(estudianteId);
		
		return "Deleted estudiante id - " + estudianteId;
	}
	
}










