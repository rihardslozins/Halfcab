//
//  SignUpService.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import Foundation
import Firebase
import FirebaseDatabase
import Combine


protocol SignUpService {
    func signUp(with details: SignUpDetails) -> AnyPublisher<Void, Error>
}

enum SignUpKeys: String {
    case firstName
    case lastName
}

final class SignUpServiceImplementation: SignUpService {
    func signUp(with details: SignUpDetails) -> AnyPublisher<Void, Error> {
        
        Deferred {
            Future { promise in
                Auth.auth().createUser(withEmail: details.email,
                                       password: details.password) { res, error in
                    
                    if let err = error {
                        promise(.failure(err))
                    } else {
                        
                        if let uid = res?.user.uid {
                            
                            let values = [SignUpKeys.firstName.rawValue: details.firstName,
                                          SignUpKeys.lastName.rawValue: details.lastName] as [String : Any]
                            
                            Database
                                .database()
                                .reference()
                                .child("users")
                                .child(uid)
                                .updateChildValues(values) { error, ref in
                                    
                                    if let err = error {
                                        promise(.failure(err))
                                    } else {
                                        promise(.success(()))
                                    }
                                }
                        }
                    }
                }
            }
        }
        .receive(on: RunLoop.main)
        .eraseToAnyPublisher()
    }
}
