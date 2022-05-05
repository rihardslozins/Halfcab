//
//  BoardDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 05/05/2022.
//

import SwiftUI

struct BoardDetailView: View {
    // MARK: - Properties
    
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
            
            // Detail Bottom Part
            
            // Ratings + Sizes
            
            // Description
            
            // Quantity + Favourite
            
            // Add To Cart
            
            Spacer()
            
        }) //: End of VStack
        .ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - Preview
struct BoardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BoardDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
