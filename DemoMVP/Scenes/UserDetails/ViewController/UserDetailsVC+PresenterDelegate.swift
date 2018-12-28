//
//  UserDetailsVC+PresenterDelegate.swift
//  DemoMVP
//
//  Created by Vortex on 12/28/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import Foundation

extension UserDetailsVC: UserDetailsView {
    
    func displayName(name: String) {
        nameTextField.text = name
    }
    
    func displayEmail(email: String) {
        emailTextField.text = email
    }
    
    func displayAddress(address: String) {
        addressTextField.text = address
    }
    
    
}
