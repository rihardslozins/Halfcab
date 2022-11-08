//
//  LoginView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 11/10/2022.
//

import SwiftUI

struct LoginView: View {
    // MARK: - Properties
    @State private var showSignUp = false
    @StateObject private var viewModel = LoginViewModelImplementation(service: LoginServiceImplementation())
    
    // MARK: - Body
    var body: some View {
        ZStack (alignment: .top) {
            Image("Background")
                .offset(y: -300)
                .offset(x: -120)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 100) {
                VStack(spacing: 16) {
                    TextInput(placeholderText: $viewModel.userDetails.email,
                              placeholder: "Email",
                              keyboardType: .emailAddress,
                              icon: "envelope")
                    PasswordInput(password: $viewModel.userDetails.password, placeholder: "Password", icon: "lock")
                    
                    VStack(spacing: 16) {
                        ButtonView(title: "LOGIN") {
                            viewModel.logIn()
                        }
                        ButtonView(title: "SIGN UP",
                                   background: .clear,
                                   foreground: colorRed,
                                   border: colorRed){
                            showSignUp.toggle()
                        }
                                   .sheet(isPresented: $showSignUp, content: {
                                       SignUpView()
                                   })
                    } //End of VStack
                    .padding(.vertical, 10)
                } //End of VStack
                .padding(.horizontal, 16)
                .alert(isPresented: $viewModel.errorOccurred,
                       content: {
                    if case .failed(let error) = viewModel.state {
                        return Alert(
                            title: Text("Error occurred"),
                            message: Text(error.localizedDescription))
                    } else {
                        return Alert(
                            title: Text("Error"),
                            message: Text("Something else went wrong"))
                    }
                })
            }//End of VStack
            .padding(.vertical, 40)
        } //End of ZStack
    }
}

// MARK: - Preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LoginView()
        }
    }
}
