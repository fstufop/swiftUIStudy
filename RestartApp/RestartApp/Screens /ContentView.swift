//
//  ContentView.swift
//  RestartApp
//
//  Created by Filipe Simoes Teodoro on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(Strings.Defaults.onboarding) var isOnboardingVisible: Bool = false
    
    var body: some View {
        ZStack {
            if isOnboardingVisible {
                OnboardingView()
            } else {
                HomeView()
            }
        }//: ZSTACK
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
