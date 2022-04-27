//
//  Constant.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

//Headers
let headers: [Header] = Bundle.main.decode("headers.json")

//Categories
let categories: [Category] = Bundle.main.decode("categories.json")

//Brands
let brands: [Brand] = Bundle.main.decode("brands.json")

//Colors
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color("ColorGray")
let colorRed: Color = Color("ColorRed")

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
