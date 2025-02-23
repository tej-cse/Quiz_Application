package com.tej.QuizApp4.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Question {
    @Id
    //@GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;
    private  String question;
    private  String option1;
    private  String option2;
    private  String option3;
    private  String option4;
    private  String rightAnswer;
    private  String category;
}
