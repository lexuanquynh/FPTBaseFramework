//
//  LoginModel.swift
//  FPTBaseFramework
//
//  Created by xuanquynhle on 2021/06/05.
//

import Foundation


struct LoginModel: Codable {
    var success: Bool?
    var message: String?

    enum CodingKeys: String, CodingKey {
        case success
        case message
    }
}
