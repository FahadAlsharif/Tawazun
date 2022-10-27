package com.FahadMVC.pro.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.FahadMVC.pro.models.Prodect;
import com.FahadMVC.pro.models.User;


@Repository
public interface ProdectRepo extends CrudRepository<Prodect, Long> {
	List<Prodect> findAll();
	List<Prodect> findAllByUser(User user);
}
