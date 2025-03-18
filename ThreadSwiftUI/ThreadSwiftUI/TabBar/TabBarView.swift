//
//  TabBarView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection:$selectedTab){
           FeedView()
                .tabItem{
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear{ selectedTab = 0}
                .tag(0)
            
         ExploreView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                        
                }
                .onAppear{ selectedTab = 1}
                .tag(1)
            UploadThreadView()
                .tabItem{
                    Image(systemName: "plus")
                        
                }
                .onAppear{ selectedTab = 2}
                .tag(2)
            ActivityView()
                .tabItem{
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        
                }
                .onAppear{ selectedTab = 3}
                .tag(3)
            ProfileView()
                .tabItem{
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        
                }
                .onAppear{ selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}
