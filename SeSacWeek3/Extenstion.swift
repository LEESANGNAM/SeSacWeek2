//
//  Extenstion.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/27.
//

import Foundation
import UIKit


extension UITableViewController{
    func showAlert(){
        
        let alert = UIAlertController(title: "하이", message: "메세지", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "ok", style: .default)
        
        alert.addAction(ok)
        present(alert, animated: true)
        
        
    }
    
}
extension UILabel{
    func configureTitleText() {
        self.textColor = .red
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
    }
}
