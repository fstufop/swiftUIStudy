//
//  ControllImageView.swift
//  PinchApp
//
//  Created by Filipe Simoes Teodoro on 14/01/23.
//

import SwiftUI

struct ControllImageView: View {
    var imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .font(.system(size: 36))
    }
}

struct ControllImageView_Previews: PreviewProvider {
    static var previews: some View {
        ControllImageView(imageName: Strings.Magnifyingglass.scale)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
