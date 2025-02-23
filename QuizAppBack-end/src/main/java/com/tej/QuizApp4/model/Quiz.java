package com.tej.QuizApp4.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
public class Quiz {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String topic;

    @ManyToMany
    private List<Question> question;
    //@ManyToMany specify a relationship to a collection of entities

    //That is a joining table will be created by spring data jpa automatically(since in the application properties we have specified "spring.jpa.hibernate.ddl-auto=update" )
    //This table typically contains foreign keys referencing both related entities(question and quiz)


    //Basically we already have a question table which hold all the questions data.
    //And here we are creating a quiz which will hold 3 things. Quiz id, title and all the questions for the quiz

    //but Actually in the database this quiz table will only contain two attribute, Quiz id and quiz title
    //The Quiz table itself does not store questions. Questions are linked via the join table.
    //That is questions associated with each quiz will be stored in a different table(joining table).

    //The join table stores only relationships(that is which quiz_id is associated with which question_id), while questions stay in the question table.
    //This joining table will of course be created by spring data jpa explicitly, we don't have to create it implicitly.
    //The automatic creation of joining table is only possible because of @ManyToMany annotation.

    /*
        Example:

                Quiz Table (quiz) → quiz_id, title
                Question Table (question) → question_id, text
                Join Table (quiz_questions) → quiz_id, question_id
    */

}
