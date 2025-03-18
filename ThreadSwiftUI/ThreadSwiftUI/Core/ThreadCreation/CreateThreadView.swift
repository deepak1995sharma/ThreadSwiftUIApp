//
//  CreateThreadView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 18/03/25.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var caption:String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        NavigationStack{
            VStack{
                HStack(alignment:.top){
                    CircularProfileImageView()
                    VStack(alignment:.leading,spacing: 4){
                        Text("Charles_lecrence")
                            .fontWeight(.bold)
                        TextField("start a thread", text: $caption,axis: .vertical)
                    }
                    .font(.footnote)
                    Spacer()
                    
                    //Xmark btn
                    if !caption.isEmpty {
                        Button{
                            caption = ""
                            
                        }label: {
                            Image(systemName: "xmark").foregroundStyle(.gray)
                        }
                    }
                   
                }
                Spacer()
            }.padding()
            
            
            
            
            .navigationTitle("New Thread").navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }.font(.subheadline).foregroundStyle(.black)
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
