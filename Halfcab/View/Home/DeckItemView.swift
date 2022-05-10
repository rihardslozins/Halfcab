//
//  DeckItemView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 02/05/2022.
//

import SwiftUI

struct DeckItemView: View {
    // MARK: - Properties
    let board: Board
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(board.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                    .background(Color.white.cornerRadius(12))
                    .background(
                        RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
            } // End of ZStack
            Text(board.name)
                .font(Font.custom("ProximaNova-Black", size: 20))
            
            Text("€\(board.price)")
                .font(Font.custom("ProximaNova-Regular", size: 18))
                .foregroundColor(.gray)
        }) // End of VStack
    }
}

// MARK: - Preview
struct DeckItemView_Previews: PreviewProvider {
    static var previews: some View {
        DeckItemView(board: boards[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
