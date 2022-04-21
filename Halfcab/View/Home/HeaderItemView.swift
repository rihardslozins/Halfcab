//
//  HeaderItemView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

struct HeaderItemView: View {
    // MARK: - Properties
    let header: Header
    
    // MARK: - Body
    var body: some View {
        Image(header.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - Review
struct HeaderItemView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderItemView(header: headers[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
