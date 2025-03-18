//
//  UserCell.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 18/03/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            CircularProfileImageView()
            VStack(alignment:.leading){
                Text("Charles_lectrec").fontWeight(.semibold)
                Text("Home race").multilineTextAlignment(.leading)
                
            }
            Spacer()
            Button {
                // Button action here
            } label: {
                Text("Following")
                    .frame(width: 120, height: 40) // Define button size
                    .background(Color.white) // Background color
                    .foregroundColor(.gray) // Text color
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray), lineWidth: 2) // Border color & width
                    )
            }
            
            .font(.footnote)
            
            
        }.padding(.horizontal)
       
        
        
        
    }
    
    
}


#Preview {
    UserCell()
}
