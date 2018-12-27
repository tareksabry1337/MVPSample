//
//  UserCell.swift
//  DemoMVP
//
//  Created by Vortex on 12/27/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell, UserCellView {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func displayName(name: String) {
        nameLabel.text = name
    }
    
    func displayEmail(email: String) {
        emailLabel.text = email
    }
    
    func displayAddress(address: String) {
        addressLabel.text = address
    }
}
