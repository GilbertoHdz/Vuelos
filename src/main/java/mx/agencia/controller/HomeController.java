package mx.agencia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value={"/", "/home"}, method = RequestMethod.GET)
	String showViewHome(){
		return "home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {

	  ModelAndView model = new ModelAndView();
	  if (error != null) {
		model.addObject("error", "Usuario invalido!");
	  }

	  if (logout != null) {
		model.addObject("msg", "Has cerrado session.");
	  }
	  model.setViewName("/components/login");//login

	  return model;
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	String accesssDenied(Model model) {
		model.addAttribute("title", "Acceso denegado");
		return "/components/403";
	}
	
}
