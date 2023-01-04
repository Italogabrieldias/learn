package com.project.learn.learn.repositories;

import com.project.learn.learn.entities.Course;
import com.project.learn.learn.entities.Reply;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReplyRepository extends JpaRepository<Reply, Long> {
}
