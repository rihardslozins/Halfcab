//
//  NavigationBarDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 05/05/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var eshop: EShop
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.none) {
                    feedback.impactOccurred()
                    eshop.selectedProduct = nil
                    eshop.showProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.black)
            })
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
            })
        } // End of HStack
    }
}

// MARK: - Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(EShop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
