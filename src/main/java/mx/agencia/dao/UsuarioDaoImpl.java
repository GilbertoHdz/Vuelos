package mx.agencia.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mx.agencia.model.Usuario;

@Repository
@Transactional
public class UsuarioDaoImpl implements UsuarioDao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void save(Usuario usuario) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(usuario);
	}

	public void update(Usuario usuario) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(usuario);
	}

	public void delete(Usuario usuario) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(usuario);
	}

	public Usuario findById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Usuario u = (Usuario)session.get(Usuario.class, id);
		return u;
	}

	public List<Usuario> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT u FROM Usuario u");
		@SuppressWarnings("unchecked")
		List<Usuario> list = query.list();
		return list;
	}

}
