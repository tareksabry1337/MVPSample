//
//  UsersInteractor.swift
//  DemoMVP
//
//  Created by Vortex on 12/27/18.
//  Copyright © 2018 Vortex. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class UsersInteractor {
    
    func getUsers(completionHandler: @escaping ([User]?, Error?) -> ()) {
        request("https://jsonplaceholder.typicode.com/users").responseArray { (response: DataResponse<[User]>) in
            let result = response.result
            switch result {
            case .success(let users):
                completionHandler(users, nil)
            case .failure(let error):
                completionHandler(nil, error)
            }
        }
    }
    
}
