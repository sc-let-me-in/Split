//
//  LoginViewController.swift
//  Split
//
//  Created by Nick Thompson on 4/13/19.
//  Copyright © 2019 Nick Thompson. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    private lazy var emailField: UITextField = {
        let field = UITextField()
        field.borderStyle = .roundedRect
        return field
    }()
    private lazy var passwordField: UITextField  = {
        let field = UITextField()
        field.borderStyle = .roundedRect
        field.isSecureTextEntry = true
        return field
    }()
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        emailField.snp.makeConstraints { (make) in
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalTo(view.snp.centerX)
        }
        passwordField.snp.makeConstraints { (make) in
            make.left.equalTo(emailField)
            make.right.equalTo(emailField)
            make.top.equalTo(emailField.snp.bottom).offset(20)
        }
        loginButton.snp.makeConstraints { (make) in
            make.left.equalTo(passwordField)
            make.right.equalTo(passwordField)
            make.top.equalTo(passwordField.snp.bottom).offset(20)
        }
    }
}
