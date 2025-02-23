package com.tej.QuizApp4.service;

import com.tej.QuizApp4.model.Question;
import com.tej.QuizApp4.dao.QuestionDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class QuestionService {
    @Autowired
    QuestionDao questionDao;

    public ResponseEntity<List<Question>> getQuestion() {
        try {
            // here we are creating a new ResponseEntity object
            // so its constructor accept two values, first the data we must return and second the HTTP Status code

            // Providing Status code is must while creating Response Entity object
            // As it does not have a no parametrized constructor
            // so at least status code we must pass as argument , even if we don't have data to pass
            return new ResponseEntity<>(questionDao.findAll(), HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<List<Question>> getQuestionByCategory(String category) {
        try {
            List<Question> question = questionDao.findByCategory(category);

            if (question == null || question.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            } else
                return new ResponseEntity<>(question, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(new ArrayList<>(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    public ResponseEntity<String> addQuestion(Question question) {
        try {
            questionDao.save(question);
            return new ResponseEntity<>("Question Added !!", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<String> deleteQuestion(int id) {
        try {
            Question question = questionDao.findById(id).orElse(null);
            if (question == null)
                return new ResponseEntity<>("Cannot Find Requested Question to delete", HttpStatus.NOT_FOUND);

            questionDao.delete(question);
            return new ResponseEntity<>("QUESTION DELETED!!", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public ResponseEntity<String> updateQuestion(int id,Question newQuestion){
        try {
            Question question = questionDao.findById(id).orElse(null);

            if (question != null) {
                if (newQuestion.getQuestion() != null) {
                    question.setQuestion(newQuestion.getQuestion());
                }
                if (newQuestion.getOption1() != null) {
                    question.setOption1(newQuestion.getOption1());
                }
                if (newQuestion.getOption2() != null) {
                    question.setOption2(newQuestion.getOption2());
                }
                if (newQuestion.getOption3() != null) {
                    question.setOption3(newQuestion.getOption3());
                }
                if (newQuestion.getOption4() != null) {
                    question.setOption4(newQuestion.getOption4());
                }
                if (newQuestion.getRightAnswer() != null) {
                    question.setRightAnswer(newQuestion.getRightAnswer());
                }
                if (newQuestion.getCategory() != null) {
                    question.setCategory(newQuestion.getCategory());
                }
                questionDao.save(question);
                return new ResponseEntity<>("Question Updated", HttpStatus.FOUND);
            }
            return new ResponseEntity<>("Cannot Find Question To Update", HttpStatus.BAD_REQUEST);
        }catch(Exception e){
            return  new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
