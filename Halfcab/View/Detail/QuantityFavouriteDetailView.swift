//
//  QuantityFavouriteDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 10/05/2022.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    // MARK: - Properties
    
    @State private var counter: Int = 0
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
                
            })
            Text(("\(counter)"))
                .font(Font.custom("ProximaNova-Semibold", size: 32))
                .foregroundColor(.white)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter <  100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.white)
            })
        }) // End of HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.white)
        .imageScale(.large)
    }
}

// MARK: - Preview
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .background(colorRed)
            .padding()
    }
}
