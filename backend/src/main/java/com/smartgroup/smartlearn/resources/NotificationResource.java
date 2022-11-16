package com.smartgroup.smartlearn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smartgroup.smartlearn.dto.NotificationDTO;
import com.smartgroup.smartlearn.services.NotificationService;

@RestController
@RequestMapping(path = "/notifications")
public class NotificationResource {

	@Autowired
	private NotificationService notificationService;
	
	@GetMapping
	public ResponseEntity<Page<NotificationDTO>> notificationForCurrentUser(Pageable pageable) {
		Page<NotificationDTO> pageDTO = notificationService.notificationsForCurrentUser(pageable);
		return ResponseEntity.ok().body(pageDTO);
	}
	
}
