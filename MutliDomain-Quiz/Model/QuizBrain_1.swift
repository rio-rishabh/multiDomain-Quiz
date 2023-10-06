//
//  QuizBrain_1.swift
//  MutliDomain-Quiz
//
//  Created by Rishabh Sharma on 05/10/23.
//

import Foundation

struct QuizBrain_1{
    
    let quiz = [Questions(q: "What is the new target set for Defence Exports in 2022-23?", options: ["Rs 15000 crore","Rs 20000 crore","Rs 40000 crore","Rs 50000 crore"], a: "Rs 40000 crore"),
                Questions(q: "When is the ‘Shaurya Diwas’ celebrated in India?", options: ["October 25","October 27","October 29","October 31"], a: "October 27"), Questions(q: "What is the name of India’s first privately developed rocket?", options: ["Akash","Vikram- S","Vikrant- S", "Surya"], a: "Vikram- S"), Questions(q: "Parakram Diwas is celebrated at Longewala War Memorial, situated in which state?", options: ["Rajasthan","Punjab","Gujarat","Maharashtra"], a: "Rajasthan"),Questions(q: "Varuna’ is a bilateral naval exercise between India and which country?", options: ["USA","France","UAE","Sri Lanka"], a: "France"),Questions(q: "Which Indian Armed Force is set to hold command-level exercise named ‘Pralay’?", options: ["Indian Army","Indian Navy","Indian Air Force","Indian Coast Guard"], a: "Indian Air Force"),Questions(q: "Who has assumed charge as the new Vice Chief of the Indian Air Force?", options: ["Air Marshal AP Singh","Air Marshal VR Chaudhari","Air Marshal Sandeep Singh","Air Marshal HS Arora"], a: "Air Marshal AP Singh")]
    
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
