//
//  Page3MainTableViewBoardCell.swift
//  Artistep
//
//  Created by 신승재 on 2022/09/06.
//

import UIKit

class Page3MainTableViewBoardCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.layer.cornerRadius = 15
        contentView.layer.borderColor = UIColor.white.cgColor
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10,
                                                                     left: 0,
                                                                     bottom: 0,
                                                                     right: 0))
    // UUID !
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
