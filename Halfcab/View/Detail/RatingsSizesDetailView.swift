//
//  RatingsSizesDetailView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 10/05/2022.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - Properties
    
    let boardSizes: [String] = ["22.0”", "26.0”", "30.0”", "34.0”"]
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("User rating")
                    .font(Font.custom("ProximaNova-SemiBold", size: 12))
                    .foregroundColor(.white)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorRed)
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Board size")
                    .font(Font.custom("ProximaNova-SemiBold", size: 12))
                    .foregroundColor(.white)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(boardSizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(Font.custom("ProximaNova-SemiBold", size: 12))
                                .foregroundColor(.white)
                                .frame(width: 38, height: 28)
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1))
                        })
                    }
                })
            })  // End of VStack
        }) // End of HStack
    }
}

// MARK: - Preview
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorRed)
    }
}
