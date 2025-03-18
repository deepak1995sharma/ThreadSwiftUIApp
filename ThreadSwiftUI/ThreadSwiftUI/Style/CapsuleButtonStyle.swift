//
//  RoundedButtonView.swift
//  ThreadSwiftUI
//
//  Created by Deepak Sharma on 17/03/25.
//

import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {
    var bgColor: Color = .teal
    var textColor: Color = .white
    var hasBorder:Bool = true
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(textColor)
            .padding()
            .frame(maxWidth: .infinity)
        //for capsule shape
            //.background(Capsule().fill(bgColor))
           
            .background(RoundedRectangle(cornerRadius: 10).fill(bgColor))  //for rectangleshape
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .overlay{
                hasBorder ? RoundedRectangle(cornerRadius: 10 ).stroke(.gray, lineWidth: 1.0) : nil
            }
    }
}
