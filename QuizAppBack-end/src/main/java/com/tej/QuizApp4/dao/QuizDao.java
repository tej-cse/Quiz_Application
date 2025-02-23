package com.tej.QuizApp4.dao;

import com.tej.QuizApp4.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuizDao extends JpaRepository<Quiz,Integer> {

    //@Query(value = "SELECT * FROM quiz q WHERE q.topic= ?1 ORDER BY RAND() LIMIT 1 ",nativeQuery = true)
    List<Quiz> findByTopic(String topic);

    boolean existsByTopic(String topic);

    Quiz findByTitle(String title);

    boolean existsByTitle(String title);
}
