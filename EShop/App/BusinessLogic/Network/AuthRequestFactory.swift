//
//  AuthRequestFactory.swift
//  EShop
//
//  Created by Никитка on 21.02.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
}
