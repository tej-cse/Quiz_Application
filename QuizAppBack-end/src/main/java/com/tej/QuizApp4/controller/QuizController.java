package com.tej.QuizApp4.controller;

import com.tej.QuizApp4.model.Quiz;
import com.tej.QuizApp4.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("quiz")
public class QuizController {

    @Autowired
    QuizService quizService;



    /*
        for creating a quiz, we require 3 user input
        1. topic or category of the quiz we want to create.
        2. number of question , we want in the quiz.
        3. title for the quiz , since our database would have multiple quiz we must give every quiz a unique name for better clarification
     */

    @PostMapping("create")
    public ResponseEntity<String> createQuiz(@RequestParam String topic, @RequestParam int numQ, @RequestParam String title){
        return quizService.createQuiz(topic, numQ, title);
    }

    @GetMapping("{topic}")
    public ResponseEntity<List<Quiz>> getQuiz(@PathVariable String topic){
        return quizService.getQuiz(topic);
    }

    @DeleteMapping("delete/{title}")
    public ResponseEntity<String> deleteQuiz(@PathVariable String title){
     return quizService.deleteQuiz(title);
    }
}
