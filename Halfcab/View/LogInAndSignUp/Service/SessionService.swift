//
//  SessionService.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import Combine
import Firebase
import FirebaseAuth
import FirebaseDatabase
import Foundation

enum SessionState {
    case loggedIn
    case loggedOut
}

protocol SessionService {
    var state: SessionState { get }
    var userDetails: SessionDetails? { get }
    func logout()
}

final class SessionServiceImplementation: ObservableObject, SessionService {
    
    @Published var state: SessionState = .loggedOut
    @Published var userDetails: SessionDetails?
    
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        setupFirebaseAuthHandler()
    }
    func logout() {
        try? Auth.auth().signOut()
    }
}

extension SessionServiceImplementation {
    
    fileprivate func setupFirebaseAuthHandler() {
        
        handler =
        Auth
            .auth()
            .addStateDidChangeListener { [weak self] res, user in
                guard let self = self else { return }
                self.state = user == nil ? .loggedOut : .loggedIn
            }
    }
    fileprivate func handleRefresh(with uid: String) {
        
        Database
            .database()
            .reference()
            .child("users")
            .child(uid)
            .observe(.value) { [weak self] snapshot in
                
                guard let self = self,
                      let value = snapshot.value as? NSDictionary,
                      let firstName = value[SignUpKeys.firstName.rawValue] as? String,
                      let lastName = value[SignUpKeys.lastName.rawValue] as? String
                else {
                    return
                }
                
                DispatchQueue.main.async {
                    self.userDetails = SessionDetails(
                        firstName: firstName,
                        lastName: lastName)
                }
                
            }
    }
}
