//
//  ContentView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0){
                        HeaderTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Skateboards")
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(boards) { board in
                                DeckItemView(board: board)
                            } // End of Loop
                        }) // End of Grid
                        .padding(15)
                        
                        TitleView(title: "Top Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } // End of VStack
                }) // End of ScrollView
            } // End of VStack
            .background(colorGray.ignoresSafeArea(.all, edges: .all))
        } // End of ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}
// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
