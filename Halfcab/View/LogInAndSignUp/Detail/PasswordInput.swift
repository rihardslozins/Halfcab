//
//  PasswordInput.swift
//  Halfcab
//
//  Created by Rihards Lozins on 11/10/2022.
//

import SwiftUI

struct PasswordInput: View {
    
    // MARK: - Properties
    @Binding var password: String
    let placeholder: String
    let icon: String?
    
    private let textFieldSymbol: CGFloat = 30
    
    // MARK: - Body
    var body: some View {
        SecureField(placeholder, text: $password)
            .disableAutocorrection(true)
            .frame(maxWidth: .infinity, minHeight: 64)
            .padding(.leading, icon == nil ? textFieldSymbol / 2 : textFieldSymbol)
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
struct PasswordInput_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PasswordInput(password: .constant(""),
                          placeholder: "Password",
                          icon: "lock")
            .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
