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
    
    func perfomMagnificent() {
        if imageScale == 1 {
            withAnimation {
                imageScale = 5
            }
        } else {
            resetImagePosition()
        }
    }
    
    // MARK: - Content
    var body: some View {
        NavigationView {
            ZStack {
                Color.clear
                
                ZStack {
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
                            perfomMagnificent()
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
                        .gesture(
                            MagnificationGesture()
                                .onChanged{ size in
                                    withAnimation(.linear(duration: 1)) {
                                        if imageScale >= 1 && imageScale <= 5 {
                                            imageScale = size
                                        } else if imageScale > 5 {
                                            imageScale = 5
                                        }
                                    }
                                }
                                .onEnded{ size in
                                    if imageScale > 5 {
                                        imageScale = 5
                                    } else if imageScale <= 1 {
                                        resetImagePosition()
                                    }
                                }
                        )
                }//: ZSTACK
                
            }//: ZSTACK
            .navigationTitle(Strings.navigationTitle)
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            }//: ONAPPEAR
            
            // MARK: - INFO PAINEL
            .overlay(
                InfoPainelView(scale: imageScale, offset: imageOffset)
                    .padding(.horizontal)
                    .padding(.top, 30)
                , alignment: .top
            )
            // MARK: - SIZE CONTROL
            .overlay(
                Group {
                    HStack {
                        Button {
                            withAnimation(.spring()) {
                                guard imageScale > 1 else { return }
                                if imageScale > 0 {
                                    imageScale -= 0.5
                                }
                            }
                        } label: {
                            ControllImageView(imageName: Strings.Magnifyingglass.minus)
                        }
                        
                        Button {
                            perfomMagnificent()
                        } label: {
                            ControllImageView(imageName: Strings.Magnifyingglass.scale)
                        }
                        
                        Button {
                            withAnimation(.spring()) {
                                guard imageScale < 5 else { return }
                                imageScale += 0.5
                            }
                        } label: {
                            ControllImageView(imageName: Strings.Magnifyingglass.plus)
                        }
                        
                    }//: HSTACK - CONTROLS
                    .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                    .background(.ultraThinMaterial)
                    .cornerRadius(12)
                    .opacity(isAnimating ? 1 : 0)
                    
                }//: GROUP - CONTROLS
                    .padding(.bottom, 30)
                    .tint(.primary)
                ,alignment: .bottom)
            
        }//: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
