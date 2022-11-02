//
//  LoginViewController.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/02.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "이메일을 입력하세요."
        textField.textAlignment = .center
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .orange
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력하세요."
        textField.textAlignment = .center
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .orange
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.backgroundColor = .green
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setConfigure()
        setConstraints()
    }
    
    func setConfigure() {
        [emailTextField, passwordTextField, loginButton].forEach {
            view.addSubview($0)
        }
    }
    
    func setConstraints() {
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(200)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(30)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(50)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(70)
        }


    }
    
}
