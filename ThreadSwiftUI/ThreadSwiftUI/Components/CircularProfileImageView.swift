//
//  CircularProfileImageView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 18/03/25.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
            Image("photo-krabi-thailand")
                .resizable()
                .scaledToFill()
                .frame(width: 40,height: 40)
                .clipShape(Circle())
        }
}

#Preview {
    CircularProfileImageView()
}
