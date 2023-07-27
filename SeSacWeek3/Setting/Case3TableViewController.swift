//
//  Case3TableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/27.
//

import UIKit

class Case3TableViewController: UITableViewController {

    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var addTextField: UITextField!
    
    var isCheck = false
    var isStar = false
    
    var status: [Int:[Bool]] = [:]

    var todoList:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()
        tableView.rowHeight = 50
    }

   
    @IBAction func addbuttonTapped(_ sender: UIButton) {
        guard let text = addTextField.text, !text.isEmpty else { return }
        todoListAdd(add: text)
        
    }
    
    func todoListAdd(add: String){
        todoList.append(add)
        tableView.reloadData()
    }

    @IBAction func checkButtonTapped(_ sender: UIButton) {
        
        // 버튼의 상위(content view) 의 상위(todocel) 이 todocell로 바뀌고, 해당 cell의 indexpath를 받아서 들어가면
        if let cell = sender.superview?.superview as? TodoCell, let indexPath = tableView.indexPath(for: cell) {
            
            // 버튼 상태 배열에서 해당 셀에 대한 버튼 상태를 가져옴
            var buttonStatus = status[indexPath.row] ?? [isCheck, isStar]
            
            buttonStatus[0].toggle()
            
            if buttonStatus[0] {
                sender.setImage(UIImage(systemName: "checkmark.rectangle.fill"), for: .normal)
            } else {
                sender.setImage(UIImage(systemName: "checkmark.rectangle"), for: .normal)
            }
            
            // 버튼 상태를 딕셔너리에 업데이트
            status[indexPath.row] = buttonStatus
        }
    }

    
    
    @IBAction func starButtonTapped(_ sender: UIButton) {
 
        // 버튼의 상위(content view) 의 상위(todocel) 이 todocell로 바뀌고, 해당 cell의 indexpath를 받아서 들어가면
        if let cell = sender.superview?.superview as? TodoCell, let indexPath = tableView.indexPath(for: cell) {
            
            // 버튼 상태 배열에서 해당 셀에 대한 버튼 상태를 가져옴
            var buttonStatus = status[indexPath.row] ?? [isCheck, isStar]
            
            buttonStatus[1].toggle()
            
            if buttonStatus[1] {
                sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
            } else {
                sender.setImage(UIImage(systemName: "star"), for: .normal)
            }
            // 버튼 상태를 딕셔너리에 업데이트
            status[indexPath.row] = buttonStatus
        }
    }
    // 추가버튼
    func setUpButton(){
        addButton.setImage(UIImage(systemName: "plus.rectangle.fill"), for: .normal)
        addButton.setTitle(" ", for: .normal)
    }
    
    
    // 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todoList.count
    }
    // 어떻게
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell") as! TodoCell

           cell.todoLabel.text = todoList[indexPath.row]
           cell.todoLabel.font = .systemFont(ofSize: 15)

           // 버튼 상태 배열에서 현재 인덱스에 해당하는 버튼 상태를 가져옴 옵셔널로 반환이 된다. 값이 없으면 초깃값 false 를 반환한다.
           let buttonState = status[indexPath.row] ?? [isCheck, isStar]

           // 체크 버튼 초기설정
           if buttonState[0] {
               cell.checkButton.setImage(UIImage(systemName: "checkmark.rectangle.fill"), for: .normal)
           } else {
               cell.checkButton.setImage(UIImage(systemName: "checkmark.rectangle"), for: .normal)
           }
        
           // 별 버튼 초기 설정
           if buttonState[1] {
               cell.starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
           } else {
               cell.starButton.setImage(UIImage(systemName: "star"), for: .normal)
           }
           return cell
    }
}
