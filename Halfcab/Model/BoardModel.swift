//
//  BoardModel.swift
//  Halfcab
//
//  Created by Rihards Lozins on 02/05/2022.
//

import Foundation

struct Board: Codable, Identifiable {
    let id: Int
    let name: String
    let price: Int
    let image: String
    let description: String
}
