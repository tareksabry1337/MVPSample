//
//  UsersVCPresenter.swift
//  DemoMVP
//
//  Created by Vortex on 12/27/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import Foundation

protocol UsersView: class {
    func showIndicator()
    func hideIndicator()
    func fetchingDataSuccess()
    func showError(error: String)
    func navigateToUserDetailsScreen(user: User)
}

protocol UserCellView {
    func displayName(name: String)
    func displayEmail(email: String)
    func displayAddress(address: String)
}

class UsersVCPresenter {
    
    private weak var view: UsersView?
    private let interactor = UsersInteractor()
    private var users = [User]()
    
    init(view: UsersView) {
        self.view = view
    }
    
    func viewDidLoad() {
        getUsers()
    }
    
    func getUsers() {
        view?.showIndicator()
        interactor.getUsers { [weak self] users, error in
            guard let self = self else { return } //And note this is only available from swift 4.2
            self.view?.hideIndicator()
            if let error = error {
                self.view?.showError(error: error.localizedDescription)
            } else {
                guard let users = users else { return }
                self.users = users
                self.view?.fetchingDataSuccess()
            }
        }
    }
    
    func getUsersCount() -> Int {
        return users.count
    }
    
    func configure(cell: UserCellView, for index: Int) {
        let user = users[index]
        cell.displayName(name: user._name)
        cell.displayEmail(email: user._email)
        cell.displayAddress(address: "\(user._address._street) \(user._address._suite)")
    }
    
    func didSelectRow(index: Int) {
        let user = users[index]
        view?.navigateToUserDetailsScreen(user: user)
    }
    
}
