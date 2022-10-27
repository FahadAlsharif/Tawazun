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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.FahadMVC.pro.models.Prodect;
import com.FahadMVC.pro.models.User;

import com.FahadMVC.pro.service.ProdectService;
import com.FahadMVC.pro.service.UserService;

@Controller
public class HomeCont {
	@Autowired
	private UserService userServ;
	@Autowired
	private ProdectService proServ;

	
	@GetMapping("")
	public String index() {
	    return "redirect:/home";
	}
	@GetMapping("/newprodect")
	public String ProdectFrom( HttpSession session,@ModelAttribute("newPro") Prodect prodect ,Model model) {
		return "ProdectForm.jsp";
		
	}
	@PostMapping("/newprodect")
	public String register(@Valid @ModelAttribute("newPro") Prodect prodect, 
	        BindingResult result, Model model, HttpSession session) {
	    if(result.hasErrors()) {
	        return "ProdectForm.jsp";
	    }else {
	    proServ.create(prodect);
	    return "redirect:/home";
	}
	}
	
	@GetMapping("/cart")
	public String Cart(Model model, HttpSession session) {
		if(session.getAttribute("user_id") == null) {
		return "redirect:/home/login";
		}else{
	Long user_id = (Long) session.getAttribute("user_id");
	User user = userServ.findUser(user_id);
	Double total = userServ.total(user);
	List<Prodect> Prodects = proServ.findbyUser(user);
	model.addAttribute("user", user);
	model.addAttribute("Prodects", Prodects);
	model.addAttribute("total", total);
	return "UserCart.jsp";}
}
	@GetMapping("/done")
	public String done(HttpSession session) {
		Long user_id = (Long) session.getAttribute("user_id");
		User user = userServ.findUser(user_id);
		userServ.done(user);
	    return "redirect:/home";
	}
	
	@GetMapping("/proflie")
	public String viewproflie(HttpSession session,Model model) {
		if(session.getAttribute("user_id") == null) {
		return "redirect:/home/login";
		}else{
		Long user_id = (Long) session.getAttribute("user_id");
		User user = userServ.findUser(user_id);
		model.addAttribute("user",user);
	    return "MyProfile.jsp";
	}
	}
	@GetMapping("/prodect/{id}")
	public String View(HttpSession session,@PathVariable("id") Long pro_id,Model model) {
		Prodect pro = proServ.findbyid(pro_id);
		model.addAttribute("pro",pro);
		if(session.getAttribute("user_id") == null) {
		return "viewProdect.jsp";
		}else{
		Long user_id = (Long) session.getAttribute("user_id");
		User user = userServ.findUser(user_id);
		model.addAttribute("user",user);
		return "viewProdect.jsp"; }
		}
	@GetMapping("/add/user/{id}")
	public String addtoUser(@PathVariable("id") Long id,HttpSession session,@RequestParam(value="num") Integer num) {
		if(session.getAttribute("user_id") == null) {
		return "redirect:/home/login";
		}else{
		Prodect prodect = proServ.findbyid(id);
		Long user_id = (Long) session.getAttribute("user_id");
		User user = userServ.findUser(user_id);
		proServ.addToUser(user, prodect,num);
	    return "redirect:/home";}
	}
	
	
	@GetMapping("/allprodects")
	public String prodects( HttpSession session ,Model model) {
			   List<Prodect> projects = proServ.allPodect();
			   model.addAttribute("projects",projects);
		    return "allProdects.jsp";
		}
	
}
