//
//  LogInService.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import Foundation
import FirebaseAuth
import Combine

protocol LogInService {
    func logIn(with details: LogInDetails) -> AnyPublisher<Void, Error>
}

final class LoginServiceImplementation: LogInService {
    
    func logIn(with details: LogInDetails) -> AnyPublisher<Void, Error> {
        
        Deferred {
            
            Future { promise in
                
                Auth
                    .auth()
                    .signIn(withEmail: details.email,
                            password: details.password) { res, error in
                        
                        if let err = error {
                            promise(.failure(err))
                        } else {
                            promise(.success(()))
                        }
                    }
            }
        }
        .receive(on: RunLoop.main)
        .eraseToAnyPublisher()
    }
}

