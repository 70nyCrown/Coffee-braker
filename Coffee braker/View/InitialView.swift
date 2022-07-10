//
//  InitialView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 09.07.2022.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        NavigationView {
            WelcomeView()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
