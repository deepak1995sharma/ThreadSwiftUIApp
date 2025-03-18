//
//  EditProfileView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 18/03/25.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile:Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(edges: [.bottom, .horizontal])
                VStack(alignment:.leading){
                    HStack{
                        VStack(alignment:.leading){
                            Text("Name").font(.subheadline).fontWeight(.bold)
                            Text("Charles leclure").font(.footnote)
                        }
                        Spacer()
                        CircularProfileImageView()
                        
                    }
                    Divider()
                    
                    //Bio field
                    VStack(alignment:.leading){
                        Text("Bio").fontWeight(.semibold)
                        TextField("Enter your Bio", text: $bio,axis: .vertical)
                    }
                    Divider()
                    
                    //Link
                    VStack(alignment:.leading){
                        Text("Link").fontWeight(.semibold)
                        TextField("Add link", text: $link,axis: .vertical)
                    }
                    Divider()
                    
                    //Private Profile
                    Toggle("Private Profile", isOn: $isPrivateProfile).fontWeight(.semibold)
                    
                    Divider()
                    
                    
                    
                    
                }.padding()
                    .background(.white)
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray4),lineWidth:1)
                    }
                    .padding()
                
            }
            
            .navigationTitle("Edit Profile").navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("cancel"){
                        
                    }.font(.subheadline).foregroundStyle(.black)
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done"){
                        
                    }.font(.subheadline).foregroundStyle(.black).fontWeight(.bold)
                }
            }
            
        }
    }
}

#Preview {
    EditProfileView()
}
