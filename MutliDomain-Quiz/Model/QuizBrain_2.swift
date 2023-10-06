//
//  QuizBrain_1.swift
//  MutliDomain-Quiz
//
//  Created by Rishabh Sharma on 05/10/23.
//

import Foundation

struct QuizBrain_2{
    
    let quiz = [Questions(q: "What is the maximum gap / interval between two sessions of parliament?", options: ["30 days","50 days","6 months","12 months"], a: "6 months"),
                Questions(q: "Who was the first Chief election commissioner of India ?", options: ["KVK Sundaram","SP Sen Verma","Sukumar Sen","Rajmannar"], a: "Sukumar Sen"), Questions(q: "Who among the following past presidents of India never served as a Chief Minister of a state in India?", options: ["Giani Jail Singh","Neelam Sanjiva Reddy","Dr. Shankar Dayal Sharma", "Dr. Zakir Hussain"], a: "Dr. Zakir Hussain"), Questions(q: "Which of the following states has reserved the maximum number of seats for Scheduled Tribes in Lok Sabha?", options: ["Chhattisgarh","Madhya Pradesh","Gujarat","Maharashtra"], a: "Madhya Pradesh"),Questions(q: "Who is called ‘Modern Manu’?", options: ["Dr. K M Munshi","N Gopalswamy Ayyangar","T T Krishnamachari","Dr. B. R. Ambedkar"], a: "Dr. B. R. Ambedkar"),Questions(q: "Who lays down the organisational structure, jurisdiction and nomenclature of the subordinate judiciary?", options: ["Centre","State","Supreme Court","President"], a: "State"),Questions(q: "Article 371-J contains special provisions with respect to which state?", options: ["Mizoram","Karnataka","Tripura","Nagaland"], a: "Karnataka")]
    
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
