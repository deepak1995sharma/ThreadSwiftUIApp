//
//  LoginView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct LoginView: View {
    @State  var email:String
    @State  var password:String
    
    var body: some View {
        NavigationStack{
           
            VStack(spacing:25){
                Spacer()
                Image("Thread")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150,height: 150)
                VStack(alignment:.leading,spacing: 20){
                    InputTextFieldView(placeHolder: "Enter your Email ", text: $email).textInputAutocapitalization(.none)
                    InputTextFieldView(placeHolder: "Enter your Password", isSecureFiled: true, text: $password)
                }
                
                //Forget password
                NavigationLink{
                    Text("Forget passsword")
                }label: {
                    Text("Forget Password?").foregroundStyle(.black).fontWeight(.bold)
                        .padding(.top)
                        .padding(.trailing,20)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                }
                
                //Login Button
                Button{
                    
                }label: {
                    Text("Login")
                }
                .buttonStyle(CapsuleButtonStyle(bgColor: .gray))
               
                Spacer()
                
                Divider()
                
                //Dont have an account
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                }label: {
                    HStack(spacing:3){
                        Text("Don't have an account?").foregroundStyle(.black)
                           
                        Text("Sign Up").foregroundStyle(.black).fontWeight(.bold)
                            
                    }.font(.footnote)
                }.padding(.vertical,16)
            }
        }
        .padding()
    }
}

#Preview {
    LoginView(email: "", password: "")
}
