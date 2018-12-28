//
//  UserDetailsVCPresenter.swift
//  DemoMVP
//
//  Created by Vortex on 12/28/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import Foundation

protocol UserDetailsView: class {
    
    var presenter: UserDetailsVCPresenter? { get set }
    func displayName(name: String)
    func displayEmail(email: String)
    func displayAddress(address: String)
    
}

class UserDetailsVCPresenter {
    
    private weak var view: UserDetailsView?
    private var user: User
    
    init(userDetailsView: UserDetailsView?, user: User) {
        self.view = userDetailsView
        self.user = user
    }
    
    
    func viewDidLoad() {
        view?.displayName(name: user._name)
        view?.displayEmail(email: user._email)
        view?.displayAddress(address: "\(user._address._street) \(user._address._suite)")
    }
}
