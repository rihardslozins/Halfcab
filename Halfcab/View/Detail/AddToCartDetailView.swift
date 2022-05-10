//
//  AddToCartDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 10/05/2022.
//

import SwiftUI
// MARK: - Properties

// MARK: - Body
struct AddToCartDetailView: View {
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(Font.custom("ProximaNova-Semibold", size: 16))
                .foregroundColor(Color.white)
            Spacer()
        }) // End of button
        .padding(15)
        .overlay(RoundedRectangle(cornerRadius: 32).stroke(Color.white, lineWidth: 2))
    }
}

// MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorRed)
    }
}
