//
//  JoinViewController.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/02.
//

import UIKit
import SnapKit

class JoinViewController: UIViewController {
    
    let userNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "이름을 입력하세요."
        textField.textAlignment = .center
        textField.backgroundColor = .yellow
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "이메일을 입력하세요."
        textField.textAlignment = .center
        textField.backgroundColor = .yellow
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    let passwordTextfield: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력하세요."
        textField.textAlignment = .center
        textField.backgroundColor = .yellow
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    lazy var joinButton: UIButton = {
        let button = UIButton()
        button.setTitle("회원가입", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.backgroundColor = .green
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(joinButtonClicked), for: .touchUpInside)
        return button
    }()
    
    @objc func joinButtonClicked() {
        let vc = LoginViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConfigure()
        setConstraints()
    }
    
    func setConfigure() {
        [userNameTextField, emailTextField, passwordTextfield, joinButton].forEach {
            view.addSubview($0)
        }
    }
    
    func setConstraints() {
        userNameTextField.snp.makeConstraints { make in
            make.top.equalTo(150)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(userNameTextField.snp.bottom).offset(30)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
        
        passwordTextfield.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(30)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
        
        joinButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(50)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(70)
        }


    }
    
}
