//
//  CustaomTextField.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct InputTextFieldView: View {
    let placeHolder:String
    var isSecureFiled:Bool = false
    @Binding var text:String
    
    var body: some View {
        VStack{
            if isSecureFiled {
                SecureField(placeHolder, text: $text)
            }else{
                TextField(placeHolder, text: $text)
            }
        }.font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    InputTextFieldView(placeHolder: "Enter email or phone no", text: .constant(""))
}
