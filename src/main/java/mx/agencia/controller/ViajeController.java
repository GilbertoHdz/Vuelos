package mx.agencia.controller;

import java.util.List;

import mx.agencia.dao.DestinoDao;
import mx.agencia.dao.DestinoDaoImpl;
import mx.agencia.model.Destino;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViajeController {
	
	@Autowired
	DestinoDao _destinoDao = new DestinoDaoImpl();
	
	@RequestMapping(value="/destino/list", method=RequestMethod.GET)
	String showDestinoList(Model model){
		List<Destino> list = _destinoDao.findAll();
		model.addAttribute("destinos", list);
		return "lista-destinos";
	}
	
	
}
