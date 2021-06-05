//
//  NetworkLoginUseCaseProvider.swift
//  FPTBaseFramework
//
//  Created by xuanquynhle on 2021/06/05.
//

import Foundation

public class NetworkLoginUseCaseProvider: LoginUseCaseProvider {
    public func makeLoginUseCase() -> LoginUseCase {
        let networkLoginUseCase = NetworkLoginUseCase()
        return networkLoginUseCase
    }
}
