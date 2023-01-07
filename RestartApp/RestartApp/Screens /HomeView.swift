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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
