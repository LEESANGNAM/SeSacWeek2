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
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        cell.textLabel?.text = todoList[indexPath.row]
        cell.textLabel?.font = .systemFont(ofSize: 15)
        
        return cell
    }
    
    
    
    
}
