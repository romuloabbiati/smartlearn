package com.smartgroup.smartlearn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smartgroup.smartlearn.dto.DeliverRevisionDTO;
import com.smartgroup.smartlearn.services.DeliverService;

@RestController
@RequestMapping(path = "/deliveries")
public class DeliverResource {

	@Autowired
	private DeliverService deliverService;
	
	@PreAuthorize("hasAnyRole('ADMIN', 'INSTRUCTOR')")
	@PutMapping(path = "/{id}")
	public ResponseEntity<Void> saveRevision(
			@PathVariable Long id, 
			@RequestBody DeliverRevisionDTO dto) {
		deliverService.saveRevision(id, dto);
		return ResponseEntity.noContent().build();
	}
	
}
