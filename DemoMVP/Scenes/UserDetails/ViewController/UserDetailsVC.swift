//
//  UserDetails.swift
//  DemoMVP
//
//  Created by Vortex on 12/28/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import UIKit

class UserDetailsVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    var presenter: UserDetailsVCPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    

}
