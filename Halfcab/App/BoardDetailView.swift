//
//  BoardDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 05/05/2022.
//

import SwiftUI

struct BoardDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var eshop: EShop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom Part
            VStack (alignment: .center, spacing: 0, content: {
                // Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -5)
                    .padding(.bottom, 20)
                
                // Description
                ScrollView (.vertical, showsIndicators: false, content: {
                    Text(eshop.selectedProduct?.description ?? sampleBoards.description)
                        .font(Font.custom("ProximaNova-Regular", size: 16))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                }) // End of ScrollView
                
                
                // Quantity + Favorite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // Add To Cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            }) // End of VStack
            .padding(.horizontal)
            .background(
                colorRed
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        }) // End of VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - Preview
struct BoardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BoardDetailView()
            .environmentObject(EShop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
