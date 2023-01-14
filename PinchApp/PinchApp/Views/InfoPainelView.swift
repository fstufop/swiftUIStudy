//
//  InfoPainelView.swift
//  PinchApp
//
//  Created by Filipe Simoes Teodoro on 13/01/23.
//

import SwiftUI

struct InfoPainelView: View {
    var scale: CGFloat
    var offset: CGSize
    
    @State var isInfoPainelVisible: Bool = false
    
    var body: some View {
        // MARK: - HOTSPOT
        HStack {
            Image(systemName: Strings.Circle.circle)
                .symbolRenderingMode(.hierarchical)
                .resizable()
            .frame(width: 30, height: 30)
            .onLongPressGesture(minimumDuration: 1) {
                withAnimation(.easeOut) {
                    isInfoPainelVisible.toggle()
                }
            }
            
            Spacer()
            
            //
            HStack(spacing: 2) {
                Image(systemName: Strings.Arrow.Two.diagonal)
                Text("\(scale)")
                
                Spacer()
                
                      Image(systemName: Strings.Arrow.Two.horizontal)
                Text("\(offset.width)")
                
                Spacer()
                
                      Image(systemName: Strings.Arrow.Two.vertical)
                Text("\(offset.height)")
                
                Spacer()
                
            }//: HSTACK
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPainelVisible ? 1 : 0)
            
            Spacer()
        }//: HSTACK
    }
}

struct InfoPainelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPainelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
