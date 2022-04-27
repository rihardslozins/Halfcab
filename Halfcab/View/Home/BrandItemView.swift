//
//  BrandItemView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 27/04/2022.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - Properties
    
    let brand: Brand
    
    // MARK: - Body
    var body: some View {
        Button(action: {}, label: {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(4)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
        }) //: End of Button
    }
}

// MARK: - Preview
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
