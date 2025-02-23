package com.tej.QuizApp4.controller;

import com.tej.QuizApp4.model.Question;
import com.tej.QuizApp4.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

//
//CORS is a security feature
// implemented by web browsers
//to prevent web pages from making requests to a different domain (origin) than the one that served the web page.
//
//Origin: A combination of protocol (HTTP/HTTPS), domain (example.com), and port (8080).
//
//By default, browsers block requests from one origin to another unless the server explicitly allows it.
//
//Why Do We Need @CrossOrigin?
//When your frontend (e.g., a React app running on http://localhost:3000)
// tries to call a backend API (e.g., a Spring Boot app running on http://localhost:8080),
// the browser blocks the request because the origins are different.
//
//To allow such requests, the backend must include CORS headers in its response.
//The @CrossOrigin annotation makes it easy to add these headers.
@CrossOrigin

//Combines @controller and @ResponseBody
@RestController

//base mapping for the all QuizController API
@RequestMapping("question")
public class QuestionController {
    @Autowired
    QuestionService questionService;


    @GetMapping("/")
    //Response Entity returns the status code along the data
    //So while method declaration we must declare what type of data it is going to return
    public ResponseEntity<List<Question>> getQuestion(){
        return questionService.getQuestion();
    }

    @GetMapping("{category}")
    public ResponseEntity<List<Question>> getQuestionByCategory(@PathVariable String category){
        return questionService.getQuestionByCategory(category);

    }

    @PostMapping("add")
    public ResponseEntity<String> addQuestion(@RequestBody Question question){
        return questionService.addQuestion(question);
    }

    @DeleteMapping("delete")
    //@RequestParam int id
    //id must be the key name , which the client is passing while hitting at "/question/delete" URL
    // that is the correct way to access this REST API is by hitting the endpoint "/question/delete?id=4" (can specify any idea value)
    public ResponseEntity<String> deleteQuestion(@RequestParam int id){
        return questionService.deleteQuestion(id);
    }

    @PutMapping("update")
    public ResponseEntity<String> updateQuestion(@RequestParam int id, @RequestBody Question question){
        return questionService.updateQuestion(id,question);
    }


}
