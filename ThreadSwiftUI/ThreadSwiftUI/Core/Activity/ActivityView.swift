//
//  ActivityView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack{
                    
                }
               
            }
            .navigationTitle("New Thread").navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("cancel"){
                        
                    }.font(.subheadline).foregroundStyle(.black)
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post"){
                        
                    }.font(.subheadline).foregroundStyle(.black).fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    ActivityView()
}
