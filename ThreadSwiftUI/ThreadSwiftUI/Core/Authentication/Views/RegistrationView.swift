//
//  RegistrationView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct RegistrationView: View {
       @State private var email: String = ""
        @State private var password: String = ""
        @State private var fullName: String = ""
        @State private var userName: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing:25){
            Spacer()
            Image("Thread")
                .resizable()
                .scaledToFill()
                .frame(width: 150,height: 150)
            VStack(alignment:.leading,spacing: 20){
                InputTextFieldView(placeHolder: "Enter your Email ", text: $email)
                InputTextFieldView(placeHolder: "Enter your Password", isSecureFiled: true, text: $password)
                InputTextFieldView(placeHolder: "Enter your Fullname ", text: $fullName)
                InputTextFieldView(placeHolder: "Enter your username ", text: $userName)
            }
            
            
            //Login Button
            Button{
                
            }label: {
                Text("Sign Up")
            }
            .buttonStyle(CapsuleButtonStyle(bgColor: .gray))
           
            Spacer()
            
            Divider()
            
            //Dont have an account
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Sign in").fontWeight(.bold)
                }.foregroundStyle(.black)
            }
             .padding(.vertical,16)
        }
        .padding()
    }
    
}

#Preview {
    RegistrationView()
}
