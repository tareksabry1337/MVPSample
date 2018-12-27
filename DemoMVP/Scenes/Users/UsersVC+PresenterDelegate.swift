//
//  UsersVC+PresenterDelegate.swift
//  DemoMVP
//
//  Created by Vortex on 12/27/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import Foundation
import SKActivityIndicatorView

extension UsersVC: UsersView {

    func showIndicator() {
        SKActivityIndicator.show()
    }
    
    func hideIndicator() {
        SKActivityIndicator.dismiss()
    }
    
    func fetchingDataSuccess() {
        tableView.reloadData()
    }
    
    func showError(error: String) {
        print(error)
    }
    
    func navigateToUserDetailsScreen(user: User) {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
}
