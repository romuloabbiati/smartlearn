package com.smartgroup.smartlearn.services;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartgroup.smartlearn.dto.UserDTO;
import com.smartgroup.smartlearn.entities.User;
import com.smartgroup.smartlearn.repositories.UserRepository;
import com.smartgroup.smartlearn.services.exceptions.ResourceNotFoundException;

@Service
public class UserService implements UserDetailsService {

	private static Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserRepository userRepository;
	
	@Transactional(readOnly = true)
	public UserDTO findById(Long id) {
		Optional<User> object = userRepository.findById(id);
		User user = object.orElseThrow(() -> new ResourceNotFoundException("Entity not found!"));
		return new UserDTO(user);
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByEmail(username);
		
		if(user == null) {
			logger.error("User not found: " + username);
			throw new UsernameNotFoundException("User not found: " + username);
		}
		logger.info("User found: " + username);
		return user;
	}
}
