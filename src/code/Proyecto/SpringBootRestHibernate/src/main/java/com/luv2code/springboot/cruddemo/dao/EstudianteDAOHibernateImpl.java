package com.luv2code.springboot.cruddemo.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.luv2code.springboot.cruddemo.entity.Estudiante;


@Repository
public class EstudianteDAOHibernateImpl implements EstudianteDAO {

	//Definir el campo para el administrador de entidades
	private EntityManager entityManager;
		
	// configurar la inyección de constructor
	@Autowired
	public EstudianteDAOHibernateImpl(EntityManager theEntityManager) {
		entityManager = theEntityManager;
	}
	
	
	@Override
	public List<Estudiante> findAll() {

		// obtener la sesión de hibernate actual
		Session currentSession = entityManager.unwrap(Session.class);
		
		// crea un query
		Query<Estudiante> theQuery =
				currentSession.createQuery("from Estudiante", Estudiante.class);//Traer todos los registros de la tabla empleado
		
		// ejecuta el query y obtiene la lista de resultados
		List<Estudiante> estudiantes = theQuery.getResultList();
		
		//Regresa el resultado
		return estudiantes;
	}


	@Override
	public Estudiante findById(int theId) {

		// obtener la sesión de hibernate actual
		Session currentSession = entityManager.unwrap(Session.class);
		
		// Obtiene el estudiante
		Estudiante theEstudiante =
				currentSession.get(Estudiante.class, theId);
		
		// regresa el estudiante
		return theEstudiante;
	}


	@Override
	public void save(Estudiante theEstudiante) {

		// obtener la sesión de hibernate actual
		Session currentSession = entityManager.unwrap(Session.class);
		
		// guarda el estudiante
		currentSession.saveOrUpdate(theEstudiante);//Guardar o actualizar un registro con Hibernate
	}


	@Override
	public void deleteById(int theId) {
		
		// obtener la sesión de hibernate actual
		Session currentSession = entityManager.unwrap(Session.class);
				
		// Elimina el objeto con primary Key
		Query theQuery = 
				currentSession.createQuery(
						"delete from Estudiante where id=:estudianteId");
		theQuery.setParameter("estudianteId", theId);//ELimina el id que se paso como parametro
		
		theQuery.executeUpdate();//Ejecuta con el comando de hibernate
	}




}







