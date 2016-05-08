package mx.agencia.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mx.agencia.model.Usuario;
import mx.agencia.model.Viaje;

@Repository
@Transactional
public class ViajeDaoImpl implements ViajeDao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void save(Viaje viaje) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(viaje);
	}

	public void update(Viaje viaje) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(viaje);
	}

	public void delete(Viaje viaje) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(viaje);
	}

	public Viaje findById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Viaje v = (Viaje)session.get(Viaje.class, id);
		return v;
	}

	public List<Viaje> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT v FROM Viaje v");
		@SuppressWarnings("unchecked")
		List<Viaje> list = query.list();
		return list;
	}

}
