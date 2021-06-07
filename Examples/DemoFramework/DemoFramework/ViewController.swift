//
//  ViewController.swift
//  DemoFramework
//
//  Created by xuanquynhle on 2021/06/05.
//

import UIKit
import FPTBaseFramework

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Call Login sample
        FPTFramework.shared().login(username: "abc", password: "") { result in
            switch result {
            case .success(let loginModel):
                print(loginModel)
            case .failure(let error):
                print(error)
            }
        }

        // Call login social demo
        FPTFramework.shared().loginSocial(accessToken: "token here..", type: .facebook) { result in
            switch result {
            case .success(let loginModel):
                print(loginModel)
            case .failure(let error):
                print(error)
            }
        }
    }


}

