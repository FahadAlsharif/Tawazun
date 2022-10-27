package com.FahadMVC.pro.service;


import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.FahadMVC.pro.models.LoginUser;
import com.FahadMVC.pro.models.Prodect;
import com.FahadMVC.pro.models.User;
import com.FahadMVC.pro.repo.ProdectRepo;
import com.FahadMVC.pro.repo.UserRepo;




@Service
public class UserService {
	@Autowired
    private UserRepo userRepo;
	@Autowired
    private ProdectRepo proRepo;

	public User register(User newUser, BindingResult result) {
        if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {
            result.rejectValue("email", "Unique", "This email is already in use!");
        }
        if(!newUser.getPassword().equals(newUser.getConfirm())) {
            result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
            newUser.setPassword(hashed);
            return userRepo.save(newUser);
        }
    }
    
    public User login(LoginUser newLogin, BindingResult result) {
        if(result.hasErrors()) {
            return null;
        }
        Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail());
        if(!potentialUser.isPresent()) {
            result.rejectValue("email", "Unique", "Unknown email!");
            return null;
        }
        User user = potentialUser.get();
        if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
            result.rejectValue("password", "Matches", "Invalid Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            return user;
        }
        
    }
    public User findUser(Long id) {
        Optional<User> optionalUser = userRepo.findById(id);
        if(optionalUser.isPresent()) {
            return optionalUser.get();
        } else {
            return null;
        }
    }
    
    public List<User> all(){
    	return (List<User>) userRepo.findAll();
    }
    
	public User addemployee(User newUser, BindingResult result) {
        if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {
            result.rejectValue("email", "Unique", "This email is already in use!");
        }
        if(!newUser.getPassword().equals(newUser.getConfirm())) {
            result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
            newUser.setPassword(hashed);
            return userRepo.save(newUser);
        }
    }
	public Double done(User user) {                                          
		if(user.getProdects().size() != 0) {           
			for(Prodect prodect: user.getProdects()) { 
				prodect.setUser(null);
				proRepo.save(prodect);
			}
			return null;
			}else {
				return null;
			}
			}
	
	public Double total(User user) {        
		double   total = 0;                                    
		if(user.getProdects().size() != 0) {           
			for(Prodect prodect: user.getProdects()) {                
				total+=(prodect.getPrice())*(prodect.getMeny());                
				}                        
			return total;         
			}else {            
				return total;        }                    
		}
	
	
//	public String Pre(User user , List<Task> tasks) {
//		int 	 sum = 0;
//
//		
//		
//		for(Task task: tasks) {
//			if(task.isStatus() == false) {
//				sum++;
//			}
//		}
//		if (sum <= 3) {
//			return "Available";
//		}
//		else if (sum <= 5) {
//			return "Busy";
//		}
//		else {
//		return "Asking for help";
//		}
//	
//	}
	
}


