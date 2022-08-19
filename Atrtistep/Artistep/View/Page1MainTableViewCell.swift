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
    
    //MARK: Properties
    
    //MARK: Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        designAdjustment()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func designAdjustment(){
        userImage.layer.borderWidth = 1.0
        userImage.layer.cornerRadius = 25
    }
    
}
