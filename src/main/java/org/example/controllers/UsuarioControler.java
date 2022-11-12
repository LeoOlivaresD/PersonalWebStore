package org.example.controllers;

import org.example.models.entities.RegistroUsuario;
import org.example.models.services.RegistroUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/usuario")
public class UsuarioControler {
    @Autowired
    private RegistroUsuarioService usuarioService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ModelAndView mostrarUsuarios() {
        ModelAndView model = new ModelAndView();
        List<RegistroUsuario> usuarios = usuarioService.readAll();
        model.addObject("usuarios", usuarios);  //el attribute debe ser el mismo nombre que declaramos en la vista de listar User especificamente en c:items osea usuarios y en la var debe ser el objeto declarado al igual que en los c:out
        model.setViewName("listarUser");
        return model;
    }

    @RequestMapping(value = "/crear", method = RequestMethod.GET)
    public ModelAndView crearUsuario() {
        ModelAndView model = new ModelAndView();
        RegistroUsuario usuarios = new RegistroUsuario();
        model.addObject("usuarioForm", usuarios);
        model.setViewName("registroUsuario");
        return model;
    }

    @RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
    public ModelAndView editarUsuario(@PathVariable Integer id) {
        ModelAndView model = new ModelAndView();
        Optional<RegistroUsuario> registroUsuario = usuarioService.readOne(id);
        model.addObject("usuarioForm", registroUsuario);
        model.setViewName("registroUsuario");
        return model;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView guardarUsuarioEdit(@ModelAttribute("usuarioForm") RegistroUsuario registroUsuario) {
        if (registroUsuario.getIdUsuario() != null) {
        usuarioService.update(registroUsuario);
        }else {
            usuarioService.create(registroUsuario);
        }
        return new ModelAndView("redirect:/usuario/listar");
    }
    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public ModelAndView eliminarUsuario(@PathVariable("id") Integer id){
    usuarioService.delete(id);
    return new ModelAndView("redirect:/usuario/listar");
    }
}
