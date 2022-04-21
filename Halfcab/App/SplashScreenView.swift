//
//  SplashScreenView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacitiy = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("hc-logo")
                        .resizable()
                        .frame(width: 200.0, height: 70.0)
                } //: End of VStack
                .scaleEffect(size)
                .opacity(opacitiy)
                .onAppear() {
                    withAnimation(.easeOut(duration: 1.2)) {
                        self.size = 0.9
                        self.opacitiy = 1.0
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            } //: End of VStack
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
