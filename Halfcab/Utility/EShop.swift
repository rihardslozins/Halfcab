//
//  EShop.swift
//  Halfcab
//
//  Created by Rihards Lozins on 10/05/2022.
//

import Foundation

class EShop: ObservableObject {
    @Published var showProduct: Bool = false
    @Published var selectedProduct: Board? = nil
}
