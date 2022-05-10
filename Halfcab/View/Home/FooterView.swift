//
//  FooterView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

struct FooterView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Boards, shoes, clothing, and everything in between, .halfcab has the largest selection from the best brands in the world. Our commitment is to provide all of this to you at great prices and to make sure your order arrives at your door quickly.")
                .font(Font.custom("ProximaNova-Regular", size: 14))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Text(".hc")
                .font(Font.custom("ProximaNova-Bold", size: 24))
                .foregroundColor(colorRed)
            
            Text("Copyright © Rihards Lozins\nAll right reserved")
                .font(Font.custom("ProximaNova-Semibold", size: 12))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        } // End of VStack
        .padding()
    }
}

// MARK: - Preview
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorGray)
    }
}
