//
//  UserCell.swift
//  Breakpoint
//
//  Created by Jeffrey Santana on 12/27/17.
//  Copyright © 2017 Jefffrey Santana. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(profileImage image: UIImage, email: String, isSelected: Bool) {
        self.profileImage.image = image
        self.emailLbl.text = email
        if isSelected {
            checkImage.isHidden = false
        } else {
            checkImage.isHidden = true
        }
    }

}
