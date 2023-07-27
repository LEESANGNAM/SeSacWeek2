//
//  Case2TableViewController.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/27.
//

import UIKit

class Case2TableViewController: UITableViewController {
    let allSetting = ["공지사항","실험실","버전 정보"]
    let personSetting = ["개인/보안","알림","채팅","멀티프로필"]
    let etcSetting = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "전체 설정": section == 1 ? "개인설정" : "기타"
    }
    
    
    // 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return allSetting.count
            
        } else if section == 1 {
            return personSetting.count
            
        }
        else {
            return etcSetting.count
            
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
            if indexPath.section == 0 {
                cell.textLabel?.text = allSetting[indexPath.row]
            }else if indexPath.section == 1{
                cell.textLabel?.text = personSetting[indexPath.row]
            }else{
                cell.textLabel?.text = etcSetting[indexPath.row]
            }
        
        cell.textLabel?.font = .systemFont(ofSize: 15)
        
        return cell
    }
    
    
    
    
    
}
