//
//  ThreadCell.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack(alignment:.leading) { // for lazy loading for smoothness
            HStack(alignment:.top,spacing: 12){
                   CircularProfileImageView()
                    VStack(alignment:.leading,spacing: 4){
                        
                        HStack {
                            Text("Charles_lectrec").fontWeight(.semibold)
                            Spacer()
                            
                            Text("10m")
                                .font(.caption).foregroundStyle(.gray)
                           
                            Button{
                                
                            }label: {
                                Image(systemName: "ellipsis").foregroundStyle(Color(.darkGray))
                            }
                        }
                        Text("Home race in monaco was amazing").multilineTextAlignment(.leading)
                            
                        HStack(spacing:16){
                            Button{
                                
                            }label: {
                                Image(systemName: "heart").foregroundStyle(Color(.darkGray))
                            }
                            Button{
                                
                            }label: {
                                Image(systemName: "bubble.right").foregroundStyle(Color(.darkGray))
                            }

                            Button{
                                
                            }label: {
                                Image(systemName: "arrow.rectanglepath").foregroundStyle(Color(.darkGray))
                            }

                            Button{
                                
                            }label: {
                                Image(systemName: "paperplane").foregroundStyle(Color(.darkGray))
                            }
                           
                        }
                        
                        .padding(.vertical,8)
                    }
                    
                    .font(.footnote)
                
                    
                }.padding()
            
             // Divider 
                 Divider()
        }
        
    }
}

#Preview {
    ThreadCell()
}
