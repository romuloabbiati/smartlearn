package com.smartgroup.smartlearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartgroup.smartlearn.dto.NotificationDTO;
import com.smartgroup.smartlearn.entities.Notification;
import com.smartgroup.smartlearn.entities.User;
import com.smartgroup.smartlearn.repositories.NotificationRepository;

@Service
public class NotificationService {

	@Autowired
	private NotificationRepository notificationRepository;
	
	@Autowired
	private AuthService authService;

	
	@Transactional(readOnly = true)
	public Page<NotificationDTO> notificationsForCurrentUser(Pageable pageable) {
		User user = authService.authenticated();
		Page<Notification> page = notificationRepository.findByUser(user, pageable);
		return page.map(notification -> new NotificationDTO(notification));
	}
	
}
