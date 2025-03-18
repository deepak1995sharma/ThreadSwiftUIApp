//
//  FeedView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{ //Navigate krna hai to isliye naviagtion stack liya hai
            ScrollView(showsIndicators:false){ // scroll rkhan hai
                LazyVStack(alignment:.leading) { // for lazy loading for smoothness
                    ForEach(1 ... 10,id: \.self){ count in
                        ThreadCell()
                    }

                }
            }
            .refreshable {     // Pull down refresh----
                print("DEBUG:Pull down refresh")
            }
            .navigationTitle("Threads").navigationBarTitleDisplayMode(.inline)
            // Set toolbar ------
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button{
                        
                    }label: {
                        Image(systemName: "arrow.counterclockwise").foregroundStyle(.black)
                    }
                }
            }
        }

    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}
