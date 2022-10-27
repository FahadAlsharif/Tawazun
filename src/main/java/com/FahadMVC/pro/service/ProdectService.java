package com.FahadMVC.pro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.FahadMVC.pro.models.Prodect;
import com.FahadMVC.pro.models.User;
import com.FahadMVC.pro.repo.ProdectRepo;


@Service
public class ProdectService {
	@Autowired
	private ProdectRepo proRepo;
	
	
	public List<Prodect> allPodect(){
		return proRepo.findAll();
	}
	
	public Prodect create(Prodect pro) {
		return proRepo.save(pro);
	}
	
	public Prodect addToUser(User user,Prodect prodect,Integer num) {
		prodect.setMeny(num);
		prodect.setUser(user);
		return proRepo.save(prodect);
	}
	
	public Prodect findbyid(Long id) {
		return proRepo.findById(id).get();
	}
	
	public List<Prodect> findbyUser(User user){
		return proRepo.findAllByUser(user);
	}
	
	
}
