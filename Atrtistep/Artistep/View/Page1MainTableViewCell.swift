//
//  Page1MainTableViewCell.swift
//  Artistep
//
//  Created by 한지석 on 2022/08/18.
//

import UIKit

class Page1MainTableViewCell: UITableViewCell {

    //MARK: IBOutlet properties
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNickName: UILabel!
    @IBOutlet weak var userID: UILabel!
    @IBOutlet weak var testVideo: UIView!
    
    //MARK: Properties
    
    //MARK: Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        designAdjustment()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.layer.cornerRadius = 10
        contentView.layer.borderColor = UIColor.white.cgColor
        
//        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 15,
//                                                                     left: 0,
//                                                                     bottom: 0,
//                                                                     right: 0))
//
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    private func designAdjustment(){
        // make circle
        userImage.layer.cornerRadius = userImage.frame.width / 2
        userImage.clipsToBounds = true
        userImage.layer.borderWidth = 0.7
        userImage.layer.borderColor = UIColor.gray.cgColor
        
        // video
        testVideo.layer.cornerRadius = 10
    }
    
}
