//
//  SignUpDetails.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import Foundation

struct SignUpDetails {
    var email: String
    var password: String
    var firstName: String
    var lastName: String
}

extension SignUpDetails {
    static var newUserDetails: SignUpDetails {
        SignUpDetails(email: "",
                      password: "",
                      firstName: "",
                      lastName: "")
    }
}
