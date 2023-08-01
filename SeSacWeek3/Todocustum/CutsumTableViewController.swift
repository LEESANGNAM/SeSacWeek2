//
//  CutsumTableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/28.
//

import UIKit




class CutsumTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var todo = ToDoInformation() {
        didSet{ // 변수가 달라짐을 감지!
            print("didset이 뭘까?")
            tableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
        searchBar.placeholder = "할일을 입력해보세요"
        searchBar.searchTextField.addTarget(self, action: #selector(serchBarReturnTapped), for: .editingDidEndOnExit)
        
        
    }
    
    @objc func serchBarReturnTapped(){
        guard let main = searchBar.text, !main.isEmpty else { return }
        let data = ToDo(main: main , sub: "23.08.01", like: false, done: false)
        
        todo.list.append(data)
        
        
        searchBar.text = ""
        
//        tableView.reloadData()
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
        
        //IBAction 으로 구형하면 다 클릭 될 가능 성이 있다.
        cell.starButton.tag = indexPath.row
        cell.starButton.addTarget(self, action: #selector(starButtonTapped), for: .touchUpInside)
      
                
        return cell
        
    }
    
    
    @objc func starButtonTapped(_ sender: UIButton){
        print("starbutton \(sender.tag)")
        
        todo.list[sender.tag].like.toggle()
//        tableView.reloadData()
        
    }
    //3. 셀클릭 이벤트
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        print("바뀌기전 값 : ",todo.list[indexPath.row].done)
        todo.list[indexPath.row].done.toggle()
//        tableView.reloadData()
        print("바뀐 후 값 : ",todo.list[indexPath.row].done)
    }
    
    // 삭제
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // 제거 -> 갱신
        todo.list.remove(at: indexPath.row)
//        tableView.reloadData()
    }
    
    
    
    
}


