//
//  Network.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/03.
//

import Foundation
import Alamofire


//final 키워드: 재정의할 필요가 없을 떄, 클래스가 상속되는 것을 방지
//실행 시점이 아닌, 컴파일 시점에 어떤 메소드가 사용될지 결정 (Static Dispatch)
//Static Dispatch vs Dynamic Dispatch
final class Network {
    
    static let shared = Network()
    
    private init() { }
    
    func requestMemolease<T: Decodable>(type: T.Type = T.self, url: URL, method: HTTPMethod = .get, parameters: [String:String]? = nil, headers: HTTPHeaders, completion: @escaping (Result<T, Error>) -> Void) {
        
        AF.request(url, method: method, parameters: parameters, headers: headers).responseDecodable(of: T.self) { response in
            
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                guard let statusCode = response.response?.statusCode else { return }
                guard let error = MemoleaseError(rawValue: statusCode) else { return }
                
                completion(.failure(error))
            }
        }
    }
}
