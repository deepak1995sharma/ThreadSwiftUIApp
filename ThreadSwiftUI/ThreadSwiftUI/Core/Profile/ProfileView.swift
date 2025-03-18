//
//  ProfileView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter:ProfileThreadFilter = .threads
    @Namespace var animation
    
    //user this for adjusting ki kitne button dikhne hai screen par 
    private var filterBarWidth:CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        ScrollView(showsIndicators:false){
            //Bio and stats
            VStack(spacing:20) {
                HStack(alignment:.top) {
                    VStack(alignment:.leading,spacing: 16) {
                        //full name and username
                        VStack(alignment:.leading){
                            Text("Charles Leclerc").font(.title2).fontWeight(.bold)
                            Text("Charles_leclerc").font(.footnote).fontWeight(.semibold)
                            
                        }
                        Text("formula 1 Driver for Scuderia Ferreria").font(.footnote)
                        Text("2 followers").font(.caption).foregroundStyle(.gray)
                        
                    }
                    Spacer()
                    CircularProfileImageView()
                }
                .padding()
            }
            
            //Edit profile and share profile btn
            
            HStack{
                Button{
                    
                }label: {
                    Text("follow")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 362,height: 32)
                        .background(.black)
                        .cornerRadius(10)
                }
                    
            }
            
            // Thread and replies and user currentlist
            VStack{
                HStack{
                    ForEach(ProfileThreadFilter.allCases){ filter in
                        VStack {
                            Text(filter.title).font(.subheadline)
                                .fontWeight(selectedFilter == filter ? .semibold : .regular)
                            if selectedFilter == filter {
                                Rectangle().foregroundStyle(.black)
                                    .frame(width: filterBarWidth,height: 1)
                                    .matchedGeometryEffect(id: "item", in: animation)
                            }else{
                                Rectangle().foregroundStyle(.clear)
                                    .frame(width: filterBarWidth,height: 1)
                            }
                        }
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedFilter = filter
                            }
                        }
                    }
                }
            }.padding(.vertical)
            
            // List view 
            LazyVStack{
                ForEach(1 ... 10,id:\.self){ list in
                    ThreadCell()
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
