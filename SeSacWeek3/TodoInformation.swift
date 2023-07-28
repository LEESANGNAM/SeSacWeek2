//
//  TodoInformation.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/28.
//

import Foundation

struct ToDoInformation{
    var list = [ToDo.init(main: "잠자기", sub: "2023.09.02", like: false, done: false),
                ToDo.init(main: "일어나기", sub: "2023.05.10", like: true, done: false),
                ToDo.init(main: "밥먹기", sub: "2023.07.30", like: false, done: true)]
}
