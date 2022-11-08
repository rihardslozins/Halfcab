//
//  SignUpView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import SwiftUI

struct SignUpView: View {
    // MARK: - Properties
    @StateObject private var viewModel = SignUpViewModelImplementation(service: SignUpServiceImplementation())
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ZStack (alignment: .top ) {
                Image("Background-Empty")
                    .offset(y: -330)
                    .offset(x: -135)
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading, spacing: 120) {
                    VStack(spacing: 16) {
                        TextInput(placeholderText: $viewModel.userDetails.email,
                                  placeholder: "Email",
                                  keyboardType: .emailAddress,
                                  icon: "envelope")
                        PasswordInput(password: $viewModel.userDetails.password, placeholder: "Password", icon: "lock")
                        Divider()
                        TextInput(placeholderText: $viewModel.userDetails.firstName,
                                  placeholder: "First name",
                                  keyboardType: .emailAddress,
                                  icon: nil)
                        TextInput(placeholderText: $viewModel.userDetails.lastName,
                                  placeholder: "Last name",
                                  keyboardType: .emailAddress,
                                  icon: nil)
                        VStack(spacing: 16) {
                            ButtonView(title: "SIGN UP") {
                                viewModel.signUp()
                            }
                        } //End of VStack
                        .padding(.vertical, 10)
                    } //End of VStack
                    .padding(.horizontal, 16)
                }//End of VStack
                .toolbar {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color.black)
                    })
                }
            } //End of ZStack
        }//End of NavigationView
    }
}
// MARK: - Preview
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
