//
//  ContentView.swift
//  PinchApp
//
//  Created by Filipe Simoes Teodoro on 07/01/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    
    // MARK: - Methods
    func tapAnimation(scale: CGFloat) {
        withAnimation(.spring()) {
            imageScale = scale
        }
    }
    
    // MARK: - Content
    var body: some View {
        NavigationView {
            ZStack {
                Image(asset: Asset.Thumbnails.thumbMagazineFrontCover)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .scaleEffect(imageScale)
                
                // MARK: - TAP GESTURE
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            tapAnimation(scale: 5)
                        } else {
                            tapAnimation(scale: 1)
                        }
                    }
            }//: ZSTACK
            .navigationTitle(Strings.navigationTitle)
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            }//: ONAPPEAR
        }//: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
