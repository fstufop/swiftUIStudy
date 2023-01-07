//
//  OnboardingView.swift
//  RestartApp
//
//  Created by Filipe Simoes Teodoro on 02/01/23.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage(Strings.Defaults.onboarding) var isOnboardVisible = true
    @State private var buttonSize = UIScreen.main.bounds.width - 80
    var body: some View {
        ZStack {
            Color(asset: Asset.Colors.colorBlue)
                .ignoresSafeArea()
            VStack {
                //MARK: - Header
                Spacer()
                
                VStack {
                    Text(Strings.Onboarding.Title.share)
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text(Strings.Onboarding.description)
                        .font(.title3)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }//: VSTACK
                                
                //MARK: - Body
                ZStack {
                    CircleView(opacity: 0.2)
                    Image(asset: Asset.Images.character1)
                        .resizable()
                        .scaledToFit()
                }//: ZSTACK
                
                Spacer()
                
                //MARK: - Footer
                ZStack {
                    //
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    //Button Text
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    HStack {
                        Capsule()
                            .fill(Color(asset: Asset.Colors.colorRed))
                            .frame(width: 80)
                        Spacer()
                    }
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color(asset: Asset.Colors.colorRed))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        Spacer()
                    }//: HSTACK
                }//: FOOTER
                .frame(width: buttonSize, height: 80, alignment: .center)
                
            }//: VSTACK
        }//: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
