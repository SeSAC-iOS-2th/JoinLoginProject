//
//  ProfileViewController.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/02.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    let logoutButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그아웃", for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 6
        return button
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "이름"
        label.textAlignment = .center
        label.layer.cornerRadius = 8
        label.backgroundColor = .purple
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "이메일"
        label.textAlignment = .center
        label.layer.cornerRadius = 8
        label.backgroundColor = .purple
        return label
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호"
        label.textAlignment = .center
        label.layer.cornerRadius = 8
        label.backgroundColor = .purple
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConfigure()
        setConstraints()
    }
    
    func setConfigure() {
        [logoutButton, userNameLabel, emailLabel, passwordLabel].forEach {
            view.addSubview($0)
        }
    }
    
    func setConstraints() {
        logoutButton.snp.makeConstraints { make in
            make.top.trailing.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.height.equalTo(25)
            make.width.equalTo(80)
        }
        
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(200)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(30)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(30)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(50)
            make.height.equalTo(50)
        }
    }
    
}
