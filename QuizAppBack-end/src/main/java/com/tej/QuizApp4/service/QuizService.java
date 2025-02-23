package com.tej.QuizApp4.service;

import com.tej.QuizApp4.dao.QuestionDao;
import com.tej.QuizApp4.dao.QuizDao;
import com.tej.QuizApp4.model.Question;
import com.tej.QuizApp4.model.Quiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuizService {

    @Autowired
    QuestionDao questionDao;

    @Autowired
    QuizDao quizDao;

    public ResponseEntity<String> createQuiz(String topic, int numQ, String title) {
        /*
            1. for creating a quiz we require question from the database ,
               unlike creating a question where all the data required to create question were passed by the user.

            2. now, after getting list of questions from the database , we need to store them in a table which holds details about the quiz
               for this purpose we will create a table which stores quiz details,
               like its  title, topic of the quiz
               and the question associated with the quiz(in a separate joining table)
            3.
        */
        try {
            List<Question> question = questionDao.findRandomQuestionsByCategory(topic, numQ);

            if(question.isEmpty())
                throw new Exception("Error");

            Quiz quiz = new Quiz();
            quiz.setTopic(topic);
            quiz.setTitle(title);
            quiz.setQuestion(question);

            quizDao.save(quiz);
            return new ResponseEntity<>("Quiz Created Successfully", HttpStatus.CREATED);
        }catch(Exception e){
            return new ResponseEntity<>("The Category mentioned does not exist in the database",HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<List<Quiz>> getQuiz(String topic) {
        try {
            if(!quizDao.existsByTopic(topic))
                throw new Exception();

            List<Quiz> quiz = quizDao.findByTopic(topic);

            return new ResponseEntity<>(quiz, HttpStatus.OK);
        }catch(Exception e){
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<String> deleteQuiz(String title) {
        try {
            if (!quizDao.existsByTitle(title))
                throw new Exception();

            Quiz quiz = quizDao.findByTitle(title);
            quizDao.delete(quiz);
            return new ResponseEntity<>("Quiz with title " + title + " is deleted.", HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>("Quiz with this title does not exist",HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
