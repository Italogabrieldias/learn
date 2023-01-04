package com.project.learn.learn.repositories;

import com.project.learn.learn.entities.Enrollment;
import com.project.learn.learn.pk.EnrollmentPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {
}
