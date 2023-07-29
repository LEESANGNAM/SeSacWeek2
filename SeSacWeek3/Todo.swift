//
//  Todo.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/28.
//

import Foundation

class ToDo{
    var main: String
    var sub: String
    var like: Bool
    var done: Bool
    
    init(main: String, sub: String, like: Bool, done: Bool) {
        self.main = main
        self.sub = sub
        self.like = like
        self.done = done
    }
    
}
