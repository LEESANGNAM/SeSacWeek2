//
//  StudyTableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {
    
    let studyList = ["변수","상수","열거형","클래스","구조체","옵셔널바인딩","프로퍼티","메서드","객체","함수"]
    let appleList = ["아이폰","아이패드","애플워치","맥북","아이맥","아이패드프로","에어팟","짜자잔"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60// 모두가 같은높이를 가지고 있다면 하나로 셋팅
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    // 모든 경우의 수를 return 해주어야함
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "공부할것": "애플 제품"
    }
    
    //1. 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? studyList.count : appleList.count
    }
    //2. 셀의 데이터나모양
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Identifier에 해당하는 셀이 없을 수 있기 때문에 옵셔널로 반환해줌 -> 해제가 필요!
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        
        
        
        if indexPath.section == 0 {
            cell.textLabel?.text = studyList[indexPath.row]
        }else {
            cell.textLabel?.text = appleList[indexPath.row]
        }
        return cell
    }
    
//    //3. 높이 : 서비스 구현에 따라 필요한 경우가 많지만, 항상 같은 높이를 셀에서 사용한다면 비효율적일수 있음!
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row % 2 == 0{
//            return 20
//        }else{
//            return 50
//        }
//    }
//

}
