//
//  Questions.swift
//  MutliDomain-Quiz
//
//  Created by Rishabh Sharma on 05/10/23.
//

import Foundation

struct Questions{
    
    let text: String
    let choice : [String]
    let answer : String
    
    init(q: String, options: [String], a: String) {
       text = q
       choice = options
       answer = a
    }
}
