//
//  HeaderDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 05/05/2022.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var eshop: EShop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Skateboards")
                .font(Font.custom("ProximaNova-Regular", size: 18))
                .foregroundColor(.black)
            Text(eshop.selectedProduct?.name ?? sampleBoards.name)
                .font(Font.custom("ProximaNova-Black", size: 28))
                .foregroundColor(.black)
        }) // End of VStack
    }
}

// MARK: - Preview
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(EShop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
