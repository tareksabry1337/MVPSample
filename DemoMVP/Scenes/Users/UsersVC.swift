//
//  ViewController.swift
//  DemoMVP
//
//  Created by Vortex on 12/27/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import UIKit

class UsersVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var presenter: UsersVCPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        title = "Users"
        presenter = UsersVCPresenter(view: self)
        presenter.viewDidLoad()
        
    }


}

