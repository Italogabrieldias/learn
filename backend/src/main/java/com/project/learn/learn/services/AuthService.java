package com.project.learn.learn.services;

import com.project.learn.learn.entities.User;
import com.project.learn.learn.repositories.UserRepository;
import com.project.learn.learn.services.exceptions.ForbiddenException;
import com.project.learn.learn.services.exceptions.UnauthorizedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

@Service
public class AuthService implements Serializable {

    @Autowired
    private UserRepository userRepository;

    @Transactional(readOnly = true)
    public User authenticated(){
        try {
            String username = SecurityContextHolder.getContext().getAuthentication().getName();

            return userRepository.findByEmail(username);
        }catch (Exception e){
            throw new UnauthorizedException("Invalid User");

        }

    }

    public void validateSelfOrAdmin (Long userId){
        User user = authenticated();
        if(!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")){
            throw new ForbiddenException("access denied");
        }
    }
}
