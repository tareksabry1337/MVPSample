//
//  UsersVC+TableView.swift
//  DemoMVP
//
//  Created by Vortex on 12/27/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import UIKit

extension UsersVC: UITableViewDataSource, UITableViewDelegate {
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getUsersCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        presenter.configure(cell: cell, for: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRow(index: indexPath.row)
    }
    
}
