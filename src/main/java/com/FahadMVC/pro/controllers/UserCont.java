package com.FahadMVC.pro.controllers;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.FahadMVC.pro.models.LoginUser;
import com.FahadMVC.pro.models.Prodect;
import com.FahadMVC.pro.models.User;
import com.FahadMVC.pro.service.ProdectService;
import com.FahadMVC.pro.service.UserService;



@Controller
public class UserCont {
	

@Autowired
private UserService userServ;
@Autowired
private ProdectService proServ;

//	if(session.getAttribute("user") == null) {
//return "Home.jsp";
//}else



// for the admin Register !!!

@GetMapping("/home")
public String Home( HttpSession session ,Model model) {
	if(session.getAttribute("user") == null) {
//		   List<Prodect> projects = proServ.allPodect();
//		   model.addAttribute("projects",projects);
	    return "HomeWithoutLogin.jsp";
	}else{
   User user = (User)session.getAttribute("user");
//   List<Prodect> projects = proServ.allPodect();
   model.addAttribute("user",user);
//   model.addAttribute("projects",projects);
    return "Home.jsp";
	}}
@GetMapping("home/login")
public String login(Model model, HttpSession session) {
	model.addAttribute("newUser", new User());
	model.addAttribute("newLogin", new LoginUser());
	return "login.jsp";
}

@GetMapping("home/register")
public String normal(Model model, HttpSession session) {
	model.addAttribute("newUser", new User());
	model.addAttribute("newLogin", new LoginUser());
	return "index.jsp";
}
@PostMapping("home/register")
public String register(@Valid @ModelAttribute("newUser") User newUser, 
        BindingResult result, Model model, HttpSession session) {
    userServ.register(newUser, result);
    if(result.hasErrors()) {
        model.addAttribute("newLogin", new LoginUser());
        return "index.jsp";
    }
    session.setAttribute("user_id", newUser.getId());
    session.setAttribute("user", newUser);
    return "redirect:/home";
}

@PostMapping("home/login")
public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
        BindingResult result, Model model, HttpSession session) {
    User user = userServ.login(newLogin, result);
    if(result.hasErrors()) {
        model.addAttribute("newUser", new User());
        return "login.jsp";
    }
    session.setAttribute("user_id", user.getId());
    session.setAttribute("user", user);
    return "redirect:/home";
}

@PostMapping("/loginemloyee")
public String loginEmloyee(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
        BindingResult result, Model model, HttpSession session) {
    User user = userServ.login(newLogin, result);
    if(result.hasErrors()) {
        model.addAttribute("newUser", new User());
        return "login.jsp";
    }
    session.setAttribute("user_id", user.getId());
    session.setAttribute("user", user);
    return "redirect:/home";

}
	@GetMapping("/logout")
	public String logout(Model model, HttpSession session) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";
		}else{
			session.removeAttribute("user_id");
			session.removeAttribute("user");
	    return "redirect:/home";
	}
}
}
