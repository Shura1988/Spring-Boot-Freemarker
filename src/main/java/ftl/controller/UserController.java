package ftl.controller;

import ftl.model.Adress;
import ftl.model.User;
import ftl.services.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {

    @Autowired
    private final Services services;

    public UserController(Services services) {
        this.services = services;
    }


    @GetMapping("/")
    public String index() {
        return "/index";
    }

    @GetMapping("/enter")
    public String enter(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("user", services.getAllUser());
        return "listAll";
    }

    @GetMapping("/createUser")
    public String add() {
        return "addUser";
    }

    @PostMapping("/addUser")
    public String addUser(User user, Adress adress) {
        services.saveUser(user, adress);
        return "redirect:/enter";
    }

    @GetMapping("/updateUser")
    public String update() {
        return "update";
    }

        @PostMapping("/update")
    public String updateUser(User user, Adress adress) {
        services.update(user, adress);
        return "redirect:/enter";
    }

    @PostMapping("/delete")
    public String delete(@RequestParam("id") long id) {
        services.delete(id);
        return "redirect:/enter";
    }
}