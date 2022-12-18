//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Odinachi David on 06/08/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question:String
    let answer:String
    
    init(q: String, a: String){
        self.answer = a
        self.question = q
    }
}
