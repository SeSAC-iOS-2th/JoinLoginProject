//
//  Error.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/03.
//

import Foundation


enum MemoleaseError: Int, Error {
    case invalidAuthorization = 401
    case takenEmail = 406
    case emptyParameters = 501
}

extension MemoleaseError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .invalidAuthorization:
            return "토큰이 만료되었습니다. 다시 로그인 해주세요."
        case .takenEmail:
            return "이미 가입된 회원입니다. 로그인 해주세요."
        case .emptyParameters:
            return "비었습니다."
        }
    }
}
