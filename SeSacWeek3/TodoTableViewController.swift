//
//  TodoTableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/27.
//

import UIKit

class TodoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //1. 섹션 내의 셀의 갯수 : 카톡 친구 수 만큼 셀 갯수가 필요해 라고 iOS 에게 전달
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    //2. 셀 디자인 및 데이터처리 : 카톡 프로필 모서리 둥글게, 프로필 이미지와 상태 메시지 반영 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Idntifier 는 인터페이스 빌더에서 설정! 재사용 매커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        cell.textLabel?.text = "텍스트"
        
        if indexPath.row == 0{
            cell.textLabel?.text = "첫번째 텍스트"
        }else if indexPath.row == 1 {
            cell.textLabel?.text = "두번째 텍스트"
        }else if indexPath.row == 2 {
            cell.textLabel?.text = "이렇게 해야한다고?"
        }
        
        cell.textLabel?.textColor = .red
        cell.textLabel?.font = .boldSystemFont(ofSize: 20)
        
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
