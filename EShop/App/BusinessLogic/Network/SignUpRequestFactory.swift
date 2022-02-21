//
//  SignUpRequestFactory.swift
//  EShop
//
//  Created by Никитка on 21.02.2022.
//

import Foundation
import Alamofire

protocol SignUpRequestFactory {
    func signUp(user: User,
                completionHandler: @escaping (AFDataResponse<SignUpResult>) -> Void)
}
