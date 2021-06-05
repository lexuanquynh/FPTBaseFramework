//
//  ViewController.swift
//  DemoFramework
//
//  Created by xuanquynhle on 2021/06/05.
//

import UIKit
import FPTBaseFramework

class ViewController: UIViewController {
    var loginViewModel: LoginViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()      
        loginViewModel = LoginViewModel()
        loginViewModel.login(username: "abc", password: "123") { response in
            switch response {
            case .success(let loginModel):
                print(loginModel)
            case .failure(let error):
                print(error)
            }
        }
    }


}

