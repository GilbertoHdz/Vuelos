package mx.agencia.controller;

import java.util.List;

import mx.agencia.dao.DestinoDao;
import mx.agencia.dao.DestinoDaoImpl;
import mx.agencia.dao.ViajeDao;
import mx.agencia.dao.ViajeDaoImpl;
import mx.agencia.model.Destino;
import mx.agencia.model.Usuario;
import mx.agencia.model.Viaje;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViajeController {
	
	@Autowired
	DestinoDao _destinoDao = new DestinoDaoImpl();
	
	@Autowired
	ViajeDao _viajeDao = new ViajeDaoImpl();
	
	@RequestMapping(value="/destino/list", method=RequestMethod.GET)
	String showDestinoList(Model model){
		List<Destino> list = _destinoDao.findAll();
		model.addAttribute("destinos", list);
		return "lista-destinos";
	}
	
	@RequestMapping(value="/viaje/list", method=RequestMethod.GET)
	String showViajeList(Model model){
		List<Viaje> list = _viajeDao.findAll();
		model.addAttribute("viajes", list);
		return "lista-viajes";
	}
	
	@RequestMapping(value="/viaje/add", method=RequestMethod.GET)
	String showCreateViaje(Model model){
		model.addAttribute("viaje", new Viaje());
		return "agregar-viaje";
	}
	
	@RequestMapping(value="/viaje/add", method=RequestMethod.POST)
	String processCreateViajeForm(Viaje v, Errors e){
		if(e.hasErrors()){
			return "agregar-viaje";
		}
		_viajeDao.save(v);
		return "redirect:/viaje/list";
	}
	
	@RequestMapping(value="/viaje/update/{id}", method = RequestMethod.GET)
	String showEditarViajeForm(@PathVariable Integer id, Model model){
		Viaje viaje = _viajeDao.findById(id);
		model.addAttribute("viaje", viaje);
		return "editar-viaje";
	}
	
	@RequestMapping(value="/viaje/update/{id}", method = RequestMethod.POST)
	String processEditarViajeForm(Viaje v, Errors e){
		if(e.hasErrors()){
			return "editar-viaje";
		}
		_viajeDao.update(v);
		return "redirect:/viaje/list";
	}
	
	@RequestMapping(value="/viaje/delete/{id}", method=RequestMethod.GET)
	String shoeEliminarViaje(@PathVariable Integer id, Model model){
		Viaje viaje = _viajeDao.findById(id);
		model.addAttribute("v", viaje);
		return "eliminar-viaje";
	}
	
	@RequestMapping(value="/viaje/delete/{id}", method=RequestMethod.POST)
	String processEliminarUsuario(@PathVariable Integer id){
		Viaje viaje =_viajeDao.findById(id);
		_viajeDao.delete(viaje);
		return "redirect:/viaje/list";
	}
	
}














