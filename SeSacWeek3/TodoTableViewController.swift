//
//  TodoTableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/27.
//

import UIKit

class TodoTableViewController: UITableViewController {

    var list = ["장보기","영화보기","잠자기","코드보기","운동하기","밥먹기","과제하기","눕기","복습하기","달리기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        list.append("추가")
        print(list)
        
//        tableView(<#T##tableView: UITableView##UITableView#>, numberOfRowsInSection: <#T##Int#>)
//        tableView(<#T##tableView: UITableView##UITableView#>, cellForRowAt: <#T##IndexPath#>)
//        tableView?(<#T##tableView: UITableView##UITableView#>, heightForRowAt: <#T##IndexPath#>)
        
        showAlert()
        tableView.reloadData()
    }
    
    
    //1. 섹션 내의 셀의 갯수 : 카톡 친구 수 만큼 셀 갯수가 필요해 라고 iOS 에게 전달
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    //2. 셀 디자인 및 데이터처리 : 카톡 프로필 모서리 둥글게, 프로필 이미지와 상태 메시지 반영 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Idntifier 는 인터페이스 빌더에서 설정! 재사용 매커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        
        cell.textLabel?.text = list[indexPath.row]
        cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .yellow
        
        cell.textLabel?.configureTitleText()
        
        
        cell.detailTextLabel?.text = "디테일 텍스트"
        cell.detailTextLabel?.textColor = .blue
        cell.detailTextLabel?.font = .boldSystemFont(ofSize: 15)
        
        cell.imageView?.image = UIImage(systemName: "star.fill")
        print(#function,indexPath)
        return cell
        
    }
    //3.  셀 높이 : 기본 높이 44
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
