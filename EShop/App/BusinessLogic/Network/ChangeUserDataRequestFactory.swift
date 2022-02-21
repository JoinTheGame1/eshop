//
//  ChangeUserDataRequestFactory.swift
//  EShop
//
//  Created by Никитка on 21.02.2022.
//

import Foundation
import Alamofire

protocol ChangeUserDataRequestFactory {
    func changeUserData(user: User,
                        completionHandler: @escaping (AFDataResponse<ChangeUserDataResult>) -> Void)
}
