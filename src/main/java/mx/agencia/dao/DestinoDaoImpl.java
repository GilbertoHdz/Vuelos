package mx.agencia.dao;

import java.util.List;





import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mx.agencia.model.Destino;

@Repository
@Transactional
public class DestinoDaoImpl implements DestinoDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void save(Destino destino) {
		// TODO Auto-generated method stub
		
	}

	public void update(Destino destino) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Destino destino) {
		// TODO Auto-generated method stub 
		
	}

	public Destino findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	public List<Destino> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT d FROM Destino d");
		@SuppressWarnings("unchecked")
		List<Destino> list = query.list();
		return list;
	}

}
