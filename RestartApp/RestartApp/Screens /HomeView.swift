//
//  HomeView.swift
//  RestartApp
//
//  Created by Filipe Simoes Teodoro on 01/01/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage(Strings.Defaults.onboarding) var isOnboardingVisible: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            //Image
            Spacer()
            
            ZStack {
                CircleView(color: .gray, opacity: 0.2)
                
                Image(asset: Asset.Images.character2)
                    .resizable()
                    .scaledToFit()
            }//: ZSTACK
            
            Text(Strings.Home.description)
                .font(.system(.title3))
                .foregroundColor(.secondary)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button {
                withAnimation {
                    isOnboardingVisible = true
                }
            } label: {
                Image(systemName: Strings.SystemImage.Arrow.Triangle.Two.Circlepath.Circle.fill).imageScale(.large)
                Text(Strings.Home.buttonTitle)
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .tint(Color(asset: Asset.Colors.colorBlue))
            
        }//: VSTACK
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
