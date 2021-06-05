//
//  LoginEnpoint.swift
//  FPTBaseFramework
//
//  Created by xuanquynhle on 2021/06/05.
//

import Foundation

/// Login Enpoint
public enum LoginEnpoint {
    case login(parameters: [String: Any?])
}

extension LoginEnpoint: RequestProtocol {
    public var path: String {
        switch self {
        case .login(_):
            return "/login"
        }
    }

    public var method: RequestMethod {
        switch self {
        case .login(_):
            return .post
        }
    }

    public var headers: ReaquestHeaders? {
        return nil
    }

    public var parameters: RequestParameters? {
        switch self {
        case .login(let parameters):
            return parameters
        }
    }

    public var requestType: RequestType {
        return .data
    }

    public var responseType: ResponseType {
        return .json
    }

    public var progressHandler: ProgressHandler? {
        get { nil }
        set { }
    }
}
