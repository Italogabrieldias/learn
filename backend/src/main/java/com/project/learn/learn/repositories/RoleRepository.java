package com.project.learn.learn.repositories;

import com.project.learn.learn.entities.Course;
import com.project.learn.learn.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
}
