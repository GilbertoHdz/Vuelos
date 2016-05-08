package mx.agencia.dao;

import java.util.List;

import mx.agencia.model.Viaje;

public interface ViajeDao {
	
	void save(Viaje viaje);
	void update(Viaje viaje);
	void delete(Viaje viaje);
	Viaje findById(int id);
	List<Viaje> findAll();

}
