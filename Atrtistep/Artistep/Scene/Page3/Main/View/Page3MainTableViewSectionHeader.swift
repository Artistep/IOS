//
//  Page3MainTableViewSectionHeader.swift
//  Artistep
//
//  Created by 신승재 on 2022/09/14.
//

import UIKit

class Page3MainTableViewSectionHeader: UITableViewHeaderFooterView {

    @IBOutlet weak var sectionTitle: UILabel!
    @IBOutlet weak var viewMoreButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //viewMoreButton.backgroundColor = UIColor(red: 59/255, green: 59/255, blue: 59/255, alpha: 1)
        
        
        

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0,
                                                                     left: 0,
                                                                     bottom: 0,
                                                                     right: 0))
    // UUID !
    }

}
