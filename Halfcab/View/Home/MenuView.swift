//
//  MenuView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 08/11/2022.
//

import SwiftUI

struct MenuView: View {
    // MARK: - Properties
    @State var showMenu: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            Button(action: {}, label: {
                HStack(spacing: 15) {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Text("Cart")
                        .font(Font.custom("ProximaNova-Bold", size: 20))
                        .foregroundColor(.black)
                    
                    Spacer(minLength: 0)
                }
                .padding()
                
            })
            Spacer()
            
            HStack {
                Spacer()
                
                Text("Version 0.1")
                    .font(Font.custom("ProximaNova-Bold", size: 16))
                
            } // End of HStack
            .padding(10)
            
        } // End of VStack
        .frame(width: UIScreen.main.bounds.width / 1.6)
        .background(Color.white.ignoresSafeArea())
    }
}

// MARK: - Preview
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
