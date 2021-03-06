//
//  Constant.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

// Headers
let headers: [Header] = Bundle.main.decode("headers.json")

// Categories
let categories: [Category] = Bundle.main.decode("categories.json")

// Boards
let boards: [Board] = Bundle.main.decode("boards.json")

// Brands
let brands: [Brand] = Bundle.main.decode("brands.json")

// First board for product detail view
let sampleBoards: Board = boards[0]

//Colors
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color("ColorGray")
let colorRed: Color = Color("ColorRed")

// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

// Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
