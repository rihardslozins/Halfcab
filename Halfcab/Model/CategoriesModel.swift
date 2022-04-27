//
//  CategoriesModel.swift
//  Halfcab
//
//  Created by Rihards Lozins on 27/04/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
