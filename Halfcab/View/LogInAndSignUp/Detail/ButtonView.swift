//
//  ButtonView.swift
//  Halfcab
//
//  Created by Rihards Lozins on 11/10/2022.
//

import SwiftUI

struct ButtonView: View {
    
    // MARK: - Properties
    typealias ActionHandler = () -> Void
    
    let title: String
    let background: Color
    let foreground: Color
    let border: Color
    let handler: ActionHandler
    
    private let cornerRadius: CGFloat = 32
    
    internal init(title: String,
                  background: Color = colorRed,
                  foreground: Color = .white,
                  border: Color = .clear,
                  handler: @escaping ButtonView.ActionHandler) {
        self.title = title
        self.background = background
        self.foreground = foreground
        self.border = border
        self.handler = handler
    }
    
    // MARK: - Body
    var body: some View {
        Button(action: handler, label: {
            Text(title)
                .frame(maxWidth: .infinity, maxHeight: 60)
        }) // End of button
        .background(background)
        .foregroundColor(foreground)
        .font(Font.custom("ProximaNova-Semibold", size: 16))
        .cornerRadius(cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(border, lineWidth: 2)
        )
    }
}
// MARK: - Preview
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonView(title: "LOGIN"){}
            ButtonView(title: "SIGN UP",
                       background: .clear,
                       foreground: colorRed,
                       border: colorRed){}
        }
    }
}
