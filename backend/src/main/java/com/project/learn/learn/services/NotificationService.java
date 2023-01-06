package com.project.learn.learn.services;

import com.project.learn.learn.dto.NotificationDTO;
import com.project.learn.learn.entities.Notification;
import com.project.learn.learn.entities.User;
import com.project.learn.learn.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

@Service
public class NotificationService implements Serializable {
    @Autowired
    private NotificationRepository notificationRepository;
    @Autowired
    private AuthService authService;

    @Transactional(readOnly = true)
    public Page<NotificationDTO> notificationsForCurrentUser(Pageable pageable) {
        User user = authService.authenticated();
        Page<Notification> page = notificationRepository.findByUser(user, pageable);
        return page.map(x-> new NotificationDTO(x));

    }
}
