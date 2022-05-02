//
//  SectionView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 27/04/2022.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    @State var rotateClockwise: Bool
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(Font.custom("ProximaNova-Bold", size: 14))
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: End of VStack
        .background(colorRed.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - Preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
