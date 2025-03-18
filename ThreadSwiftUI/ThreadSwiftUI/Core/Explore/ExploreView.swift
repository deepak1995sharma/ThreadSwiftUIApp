//
//  ExploreView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(alignment:.leading,spacing: 12){
                    ForEach(1 ... 10,id: \.self){ user in
                        VStack{
                            UserCell()
                        }
                        Divider()
                    }
                    .padding(.vertical,4)
                }
                
            }
            .navigationTitle("Search")
            //Search Bar
            .searchable(text: $searchText,prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
