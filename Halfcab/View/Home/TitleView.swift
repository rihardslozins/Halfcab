//
//  TitleView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 27/04/2022.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Poperties
    var title: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(Font.custom("ProximaNova-Black", size: 32))
            
            Spacer()
        } //: End of HStack
        .padding(.horizontal)
        .padding(.top, 10)
        .padding(.bottom, 10)
    }
}

// MARK: - Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Test Text")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
