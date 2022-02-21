//
//  ViewController.swift
//  EShop
//
//  Created by Никитка on 17.02.2022.
//

import UIKit

class ViewController: UIViewController {

    let requestFactory = RequestFactory()

    override func viewDidLoad() {
        super.viewDidLoad()
        authRequest()
        logoutRequest()
    }

    func authRequest() {
        let auth = requestFactory.makeAuthRequestFatory()

        auth.login(userName: "Somebody", password: "mypassword") { response in
            switch response.result {
                case .success(let login):
                    print(login)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func logoutRequest() {
        let auth = requestFactory.makeAuthRequestFatory()

        auth.logout(userId: 123) { response in
            switch response.result {
                case .success(let logout):
                    print(logout)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }

}

