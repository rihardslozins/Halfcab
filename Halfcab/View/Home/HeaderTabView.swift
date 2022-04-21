//
//  HeaderTabView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 21/04/2022.
//

import SwiftUI

struct HeaderTabView: View {
    var body: some View {
        TabView {
            ForEach(headers) { header in HeaderItemView(header: header)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                
            }
        } //: End of TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct HeaderTabView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTabView()
            .background(Color.gray)
    }
}
