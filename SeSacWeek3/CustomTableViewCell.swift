//
//  CustomTableViewCell.swift
//  SeSacWeek3
//
//  Created by 이상남 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var checkImageView: UIImageView!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    
    
    func configreCell(row: ToDo){
        mainLabel.text = row.main
        subLabel.text = row.sub

        if row.done {
            checkImageView.image = UIImage(systemName: "checkmark.square.fill")
//            row.done.toggle()
        }else{
            checkImageView.image = UIImage(systemName: "checkmark.square")
//            row.done.toggle()
        }
        
        if row.like{
            starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
//            row.done.toggle()
        }else{
            starButton.setImage(UIImage(systemName: "star"), for: .normal)
//            row.done.toggle()

        }
    }
    
    func tapCheckButton(todo: ToDo){
        if todo.done {
            checkImageView.image = UIImage(systemName: "checkmark.square.fill")
        }else{
            checkImageView.image = UIImage(systemName: "checkmark.square")
        }
        
        todo.done.toggle()
        
    }
    
    
    
}
