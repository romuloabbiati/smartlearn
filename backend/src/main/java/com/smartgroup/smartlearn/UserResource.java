package com.smartgroup.smartlearn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smartgroup.smartlearn.dto.UserDTO;
import com.smartgroup.smartlearn.services.AuthService;
import com.smartgroup.smartlearn.services.UserService;

@RestController
@RequestMapping(path = "/users")
public class UserResource {

	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthService authService;
	
	
	@GetMapping(path = "/{id}")
	public ResponseEntity<UserDTO> findById(@PathVariable Long id) {
		authService.validateSelfOrAdmin(id);
		UserDTO userDTO = userService.findById(id);
		return ResponseEntity.ok().body(userDTO);
	}
	
}
