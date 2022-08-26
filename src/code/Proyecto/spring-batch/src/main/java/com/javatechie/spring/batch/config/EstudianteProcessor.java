package com.javatechie.spring.batch.config;

import com.javatechie.spring.batch.entity.Estudiante;
import org.springframework.batch.item.ItemProcessor;

//Se procesa la informacion para recibir un estudiante y mostrar un estudiante por escuela
public class EstudianteProcessor implements ItemProcessor<Estudiante,Estudiante> {

    @Override
    public Estudiante process(Estudiante estudiante) throws Exception {
        if(estudiante.getEscuela().equals("IPN")) {
            return estudiante;
        }
        return null;
        
    }
}
