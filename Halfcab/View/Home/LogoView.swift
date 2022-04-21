//
//  LogoView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

struct LogoView: View {
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(".halfcab")
                .font(Font.custom("ProximaNova-Bold", size: 24))
                .foregroundColor(colorRed)
        } //: End of HStack
    }
}

// MARK: - Preview
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
