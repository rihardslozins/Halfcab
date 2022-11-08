//
//  LogInViewModel.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import Foundation
import Combine

enum LogInState {
    case successfull
    case failed(error: Error)
    case nothing
}

protocol LogInViewModel {
    func logIn()
    var service: LogInService { get }
    var state: LogInState { get }
    var userDetails: LogInDetails { get }
    init(service: LogInService)
    var errorOccurred: Bool { get }
}

final class LoginViewModelImplementation: ObservableObject, LogInViewModel {
    
    @Published var errorOccurred: Bool = false
    @Published var state: LogInState = .nothing
    @Published var userDetails: LogInDetails = LogInDetails.newUserDetails
    
    private var subscriptions = Set<AnyCancellable>()
    
    let service: LogInService
    
    init(service: LogInService) {
        self.service = service
        getError()
    }
    
    func logIn() {
        
        service
            .logIn(with: userDetails)
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

private extension LoginViewModelImplementation {
    
    func getError() {
        $state
            .map { state -> Bool in
                switch state {
                case .successfull,
                        .nothing:
                    return false
                case .failed:
                    return true
                }
            }
            .assign(to: &$errorOccurred)
    }
}
