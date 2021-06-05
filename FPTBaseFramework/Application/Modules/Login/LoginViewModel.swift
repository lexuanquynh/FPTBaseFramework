//
//  LoginViewModel.swift
//  FPTBaseFramework
//
//  Created by xuanquynhle on 2021/06/05.
//

import Foundation

class LoginViewModel {
    private let useCase: LoginUseCase
    
    init(useCase: LoginUseCase) {
        self.useCase = useCase
    }
    
    func login(username: String, password: String) {
        self.useCase.login(username: username, password: password) { response in
            // Do anything
            switch response {
            case .success(let loginModel):
                print(loginModel)
            case .failure(let error):
                print(error)                
            }
        }
        
    }
}
