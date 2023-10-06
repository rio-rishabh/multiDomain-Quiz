//
//  QuizBrain_1.swift
//  MutliDomain-Quiz
//
//  Created by Rishabh Sharma on 05/10/23.
//

import Foundation

struct QuizBrain_4{
    
    let quiz = [Questions(q: "In which year, National Housing Bank (NHB) was established?", options: ["1985","1986","1987","1988"], a: "1988"),Questions(q: "Which among the following organizations is the India's largest debt market investor?", options: ["LIC of India","ICICI Bank","EPFO","State Bank of India"], a: "EPFO"), Questions(q: "Which among the following represents accounting year of Reserve Bank of India?", options: ["April- March","January – December","September-August", "July-June"], a: "July-June"), Questions(q: "Where are the headquarters of tea board located?", options: ["Sicher","Guwahati","Kolkata","Patna"], a: " Kolkata"),Questions(q: "Which state has the largest area of wetlands in India?", options: ["Maharshtra","Gujarat","West Bengal","Andhra Pradesh"], a: "Gujarat"),Questions(q: "Which among the following Economic system have Barter system?", options: ["Socialist","Traditional","Capitalist","Mixed"], a: "Traditional"),Questions(q: "In which year, the first passenger train was introduced in India?", options: ["1857","1853","1866","1847"], a: "1853")]
    
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
