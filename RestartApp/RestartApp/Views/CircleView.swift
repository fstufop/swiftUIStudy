//
//  CircleView.swift
//  RestartApp
//
//  Created by Filipe Simoes Teodoro on 01/01/23.
//

import SwiftUI

struct CircleView: View {
    @State var opacity: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.white.opacity(opacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(.white.opacity(opacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(opacity: 0.2)
    }
}
