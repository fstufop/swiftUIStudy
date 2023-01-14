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
    @State private var imageOffset: CGSize = .zero
    
    // MARK: - Methods
    func resetImagePosition() {
        withAnimation(.spring()) {
            imageScale = 1
            imageOffset = .zero
        }
    }
    
    // MARK: - Content
    var body: some View {
        NavigationView {
            ZStack {
                Color.clear
                
                Image(asset: Asset.Thumbnails.thumbMagazineFrontCover)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)
                
                // MARK: - TAP GESTURE
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            withAnimation {
                                imageScale = 5
                            }
                        } else {
                            resetImagePosition()
                        }
                    }
                // MARK: - DRAG GESTURE
                    .gesture(
                        DragGesture()
                            .onChanged { offset in
                                withAnimation(.linear(duration: 1)) {
                                    imageOffset = offset.translation
                                }
                            }
                            .onEnded { _ in
                                if imageScale <= 1 {
                                    resetImagePosition()
                                }
                            }
                    )
                // MARK: - LONGPRESS GESTURE
                    .gesture(
                        LongPressGesture()
                    )
            }//: ZSTACK
            .navigationTitle(Strings.navigationTitle)
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            }//: ONAPPEAR
            .overlay(
                InfoPainelView(scale: imageScale, offset: imageOffset)
                    .padding(.horizontal)
                    .padding(.top, 30)
                , alignment: .top
            )
        }//: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
