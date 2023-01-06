package com.project.learn.learn.resources;

import com.project.learn.learn.dto.DeliverRevisionDTO;
import com.project.learn.learn.services.DeliverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverResource {

    @Autowired
    private DeliverService deliverService;

    @PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
    @GetMapping(value = "/{id}")
    public ResponseEntity<Void> saveRevision (@PathVariable Long id, DeliverRevisionDTO dto){
     deliverService.saveRevision(id, dto);
     return ResponseEntity.noContent().build();
    }
}
