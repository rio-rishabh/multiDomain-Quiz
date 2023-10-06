//
//  QuizBrain_1.swift
//  MutliDomain-Quiz
//
//  Created by Rishabh Sharma on 05/10/23.
//

import Foundation

struct QuizBrain_3{
    
    let quiz = [Questions(q: "According to Buddhist traditions, who was Charioteer of Buddha?", options: ["Channa","Kanthaka","Devdatta","Chunda"], a: "Channa"),Questions(q: "Who was the founder of Sunga Dynasty?", options: ["Pushyamitra","Agnimitra","Vasumitra","Vajramitra"], a: "Pushyamitra"), Questions(q: "Who is the author of Devichandraguptam?", options: ["Vishakhadatta","Dandin","Bharavi", "Kalidas"], a: "Vishakhadatta"), Questions(q: "Who was appointed as the viceroy of Taxila and Ujjain during the reign of Bindusara?", options: ["Susima","Kunala","Ashoka","Vaisya"], a: "Ashoka"),Questions(q: "According to Kautilya which of the following was referred to as the Dharmapravakta?", options: ["King","Viceroy","Priest","Pativedakas"], a: "King"),Questions(q: "Which of the following was the treasurer in the Mauryan administration?", options: ["Samahartri","Akshapatala","Samnidhatri","Dauvarika"], a: "Samnidhatr"),Questions(q: "Which of the following was the lowest level of administration during the Satavahana dynasty?", options: ["Village","Town","Province","District"], a: "Village")]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }
        else
        {
            return false
        }
    }
    
    func getScore()->Int{
        return score
    }
    
    func getQuestionText() ->String{
        quiz[questionNumber].text
    }
    
    func getAnswerChoice() -> [String]{
        quiz[questionNumber].choice
    }
    
    mutating func getNewQuestion(){
        
        if(questionNumber + 1 < quiz.count) {
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
    }
    
}
