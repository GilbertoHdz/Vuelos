package mx.agencia.dao;

import java.util.List;

import mx.agencia.model.Usuario;

public interface UsuarioDao {
	
	void save(Usuario usuario);
	void update(Usuario usuario);
	void delete(Usuario usuario);
	Usuario findById(int id);
	List<Usuario> findAll();

}
