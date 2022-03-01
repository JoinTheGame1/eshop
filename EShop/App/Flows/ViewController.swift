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
        signUpRequest()
        changeUserDataRequest()
    }

    func authRequest() {
        let factory = requestFactory.makeAuthRequestFatory()

        factory.login(userName: "Somebody", password: "mypassword") { response in
            switch response.result {
                case .success(let login):
                    print(login)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func logoutRequest() {
        let factory = requestFactory.makeAuthRequestFatory()

        factory.logout(userId: 123) { response in
            switch response.result {
                case .success(let logout):
                    print(logout)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func signUpRequest() {
        let factory = requestFactory.makeSignUpRequestFatory()
        let user = User(id: 123,
                        login: "NeverGonnaSignYouUp",
                        password: "RunAround",
                        email: "dog@gmail.com",
                        gender: "m",
                        creditCard: "1337-1337-1337-1337",
                        bio: "Somebody tell me...",
                        name: "Rick",
                        lastname: "Astley")
        
        factory.signUp(user: user) { response in
            switch response.result {
                case .success(let signUp):
                    print(signUp)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
    func changeUserDataRequest() {
        let factory = requestFactory.makeChangeUserDataRequestFatory()
        let user = User(id: 123,
                        login: "NeverGonnaSignYouUp",
                        password: "RunAround",
                        email: "dog@gmail.com",
                        gender: "m",
                        creditCard: "1337-1337-1337-1337",
                        bio: "Somebody tell me...",
                        name: "Rick",
                        lastname: "Astley")
        
        factory.changeUserData(user: user) { response in
            switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
}
