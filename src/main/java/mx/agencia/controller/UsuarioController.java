package mx.agencia.controller;

import java.util.List;

import mx.agencia.dao.UsuarioDao;
import mx.agencia.dao.UsuarioDaoImpl;
import mx.agencia.model.Usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsuarioController {
	
	@Autowired
	UsuarioDao _usuarioDao = new UsuarioDaoImpl();
	
	@RequestMapping(value="/usuario/list", method = RequestMethod.GET)
	String showListUsuario(Model model){
		List<Usuario> list = _usuarioDao.findAll();
		model.addAttribute("usuarios", list);
		return "lista-usuarios";
	}
	
	@RequestMapping(value="/usuario/add", method = RequestMethod.GET)
	String showCreateUsusarioForm(Model model){
		model.addAttribute("usuario", new Usuario());
		return "agregar-usuario";
	}
	
	@RequestMapping(value="/usuario/add", method = RequestMethod.POST)
	String processCreateUsuarioForm(Usuario u, Errors e){
		if(e.hasErrors()){
			return "agregar-usuario";
		}
		_usuarioDao.save(u);
		return "redirect:/usuario/list";
	}
	
	@RequestMapping(value="/usuario/update/{id}", method=RequestMethod.GET)
	String showEditarProductoForm(@PathVariable Integer id, Model model){
		Usuario user=_usuarioDao.findById(id);
		model.addAttribute("usuario", user);
		return "editar-usuario";
	}
	
	@RequestMapping(value="/usuario/update/{id}", method=RequestMethod.POST)
	String processEditarProductoForm(Usuario u, Errors e){
		if(e.hasErrors()){
			return "editar-usuario";
		}
		_usuarioDao.update(u);
		return "redirect:/usuario/list";
	}
	
	@RequestMapping(value="/usuario/delete/{id}", method=RequestMethod.GET)
	String showEliminarProducto(@PathVariable Integer id, Model model){
		Usuario user=_usuarioDao.findById(id);
		model.addAttribute("usuario", user);
		return "eliminar-usuario";
	}
	

	@RequestMapping(value="/usuario/delete/{id}", method=RequestMethod.POST)
	String processEliminarProducto(@PathVariable Integer id){
		Usuario user=_usuarioDao.findById(id);
		_usuarioDao.delete(user);
		return "redirect:/usuario/list";
	}
	
}


















