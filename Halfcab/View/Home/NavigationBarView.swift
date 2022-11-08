//
//  NavigationBarView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    @EnvironmentObject var sessionService: SessionServiceImplementation
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal")
                    .font(.title)
                    .foregroundColor(.black)
            }) // End of Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {sessionService.logout()}, label: {
                ZStack {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .resizable()
                        .frame(width: 24.0, height: 24.0)
                        .foregroundColor(Color.black)
                }
            }) // End of Button
        } // End of HStack
    }
}
// MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
