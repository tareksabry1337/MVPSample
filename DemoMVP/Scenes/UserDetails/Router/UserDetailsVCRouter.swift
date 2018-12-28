//
//  UserDetailsVCRouter.swift
//  DemoMVP
//
//  Created by Vortex on 12/28/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import UIKit

class UserDetailsVCRouter {
    
    class func createUserDetailsVC(user: User) -> UIViewController {
        
        let userDetailsVC = mainStoryboard.instantiateViewController(withIdentifier: "UserDetailsVC")
        if let userDetailsView = userDetailsVC as? UserDetailsView {
            let presenter = UserDetailsVCPresenter(userDetailsView: userDetailsView, user: user)
            userDetailsView.presenter = presenter
        }
        return userDetailsVC
    }
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
