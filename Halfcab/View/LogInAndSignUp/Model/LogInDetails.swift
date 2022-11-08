//
//  LogInDetails.swift
//  Halfcab
//
//  Created by Rihards Lozins on 20/10/2022.
//

import Foundation

struct LogInDetails {
    var email: String
    var password: String
}

extension LogInDetails {
    static var newUserDetails: LogInDetails {
        LogInDetails(email: "", password: "")
    }
}
