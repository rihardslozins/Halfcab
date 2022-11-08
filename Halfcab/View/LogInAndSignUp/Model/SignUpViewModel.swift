//
//  SignUpViewModel.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import Foundation
import Combine

enum SignUpState {
    case successfull
    case failed(error: Error)
    case nothing
}

protocol SignUpViewModel {
    func signUp()
    var service: SignUpService { get }
    var state: SignUpState { get }
    var userDetails: SignUpDetails { get }
    init(service: SignUpService)
}

final class SignUpViewModelImplementation: ObservableObject, SignUpViewModel {
    
    let service: SignUpService
    var state: SignUpState = .nothing
    @Published var userDetails: SignUpDetails = SignUpDetails.newUserDetails
    
    private var subscriptions = Set<AnyCancellable>()
    
    init (service: SignUpService) {
        self.service = service
    }
    
    func signUp() {
        
        service
            .signUp(with: userDetails)
            .sink { [weak self] res in
                
                switch res {
                case .failure(let error):
                    self?.state = .failed(error: error)
                default: break
                }
            } receiveValue: { [weak self] in
                self?.state = .successfull
                
            }
            .store(in: &subscriptions)
        
    }
}
