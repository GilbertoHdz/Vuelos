package mx.agencia.dao;

import java.util.List;

import mx.agencia.model.Destino;

public interface DestinoDao {
	
	void save(Destino destino);
	void update(Destino destino);
	void delete(Destino destino);
	Destino findById(int id);
	List<Destino> findAll();

}
