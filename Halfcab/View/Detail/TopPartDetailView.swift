//
//  TopPartDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 05/05/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var eshop: EShop
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    var body: some View {
        HStack (alignment: .center, spacing: 6, content: {
            // Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .font(Font.custom("ProximaNova-Regular", size: 18))
                    .foregroundColor(.black)
                
                Text(eshop.selectedProduct?.formattedPrice ?? sampleBoards.formattedPrice)
                    .font(Font.custom("ProximaNova-Black", size: 24))
                    .foregroundColor(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // Photo
            Image(eshop.selectedProduct?.image ?? sampleBoards.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }) // End of HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

// MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(EShop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
