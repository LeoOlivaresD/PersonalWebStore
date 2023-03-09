package org.example.controllers;

import org.example.models.entities.Contacto;
import org.example.models.services.ContactoService;
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
@RequestMapping(value = "/formulario")
public class ContactoController {
    @Autowired
    private ContactoService contactoService;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ModelAndView mostarConsultas() {
        ModelAndView model = new ModelAndView();
        List<Contacto> contacto = contactoService.readAll();
        model.addObject("contacto", contacto);
        model.setViewName("listarConsultas");
        return model;
    }

    @RequestMapping(value = "/crear", method = RequestMethod.GET)
    public ModelAndView crearConsulta() {
        ModelAndView model = new ModelAndView();
        Contacto contacto = new Contacto();
        model.addObject("contactoForm", contacto);
        model.setViewName("contacto");
        return model;
    }

    @RequestMapping(value = "/editar/{id}", method = RequestMethod.GET)
    public ModelAndView editarConsulta(@PathVariable Integer id) {
        ModelAndView model = new ModelAndView();
        Optional<Contacto> contacto = contactoService.readOne(id);
        model.addObject("contactoForm", contacto);
        model.setViewName("contacto");
        return model;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveContacto(@ModelAttribute("contactoForm") Contacto contacto) {
        if (contacto.getIdFormulario() != null) {
            contactoService.update(contacto);
        } else {
            contactoService.create(contacto);
        }
        return new ModelAndView("redirect:/");
    }
    @RequestMapping(value = "/delete/{id}" , method = RequestMethod.GET)
    public ModelAndView deleteQuary(@PathVariable Integer id){
        contactoService.delete(id);
        return new ModelAndView("redirect:/formulario/listar");
    }
}
