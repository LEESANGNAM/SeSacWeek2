//
//  CutsumTableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/28.
//

import UIKit




class CutsumTableViewController: UITableViewController {
    
    
    var todo = ToDoInformation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
        
    }

    //갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }
    // 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        var row = todo.list[indexPath.row]
        
        cell.configreCell(row: row)
      
                
        return cell
        
    }
    //3. 셀클릭 이벤트
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        print("바뀌기전 값 : ",todo.list[indexPath.row].done)
        cell.tapCheckButton(todo: todo.list[indexPath.row])
        tableView.reloadData()
        print("바뀐 후 값 : ",todo.list[indexPath.row].done)
    }
    
    
    
    }


