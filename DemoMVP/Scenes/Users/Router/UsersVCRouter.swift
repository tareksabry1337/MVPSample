//
//  UsersVCRouter.swift
//  DemoMVP
//
//  Created by Vortex on 12/28/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import UIKit

class UsersVCRouter {
    
    class func createUsersVC() -> UIViewController {
        let navigationController = mainStoryboard.instantiateViewController(withIdentifier: "UINavigationController")
        let usersView = navigationController.children.first as? UsersView
        let interactor = UsersInteractor()
        let router = UsersVCRouter()
        let presenter = UsersVCPresenter(view: usersView, interactor: interactor, router: router)
        usersView?.presenter = presenter
        return navigationController
    }
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    func navigateToUserDetailsScreen(from view: UsersView?, user: User) {
        let userDetailsView = UserDetailsVCRouter.createUserDetailsVC(user: user)
        if let viewController = view as? UIViewController {
            viewController.navigationController?.pushViewController(userDetailsView, animated: true)
        }
    }
    
}
