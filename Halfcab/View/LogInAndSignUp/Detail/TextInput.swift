//
//  TextInput.swift
//  Halfcab
//
//  Created by Rihards Lozins on 11/10/2022.
//

import SwiftUI

struct TextInput: View {
    
    // MARK: - Properties
    @Binding var placeholderText: String
    let placeholder: String
    let keyboardType: UIKeyboardType
    let icon: String?
    
    private let textFieldSymbol: CGFloat = 30
    
    // MARK: - Body
    var body: some View {
        TextField(placeholder, text: $placeholderText)
            .disableAutocorrection(true)
            .frame(maxWidth: .infinity, minHeight: 64)
            .padding(.leading, icon == nil ? textFieldSymbol / 2 : textFieldSymbol)
            .keyboardType(keyboardType)
            .background(
                
                ZStack(alignment: .leading) {
                    if let systemImage = icon {
                        Image(systemName: systemImage)
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.leading, 5)
                            .foregroundColor(Color.gray.opacity(0.5))
                    }
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.gray.opacity(0.25))
                })// End of ZStack
    }
}

// MARK: - Preview
struct TextInput_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextInput( placeholderText: .constant(""),
                       placeholder: "Email",
                       keyboardType: .emailAddress,
                       icon: "envelope")
            .previewLayout(.sizeThatFits)
            .padding()
            TextInput(placeholderText: .constant(""),
                      placeholder: "First name",
                      keyboardType: .default,
                      icon: nil)
            .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
