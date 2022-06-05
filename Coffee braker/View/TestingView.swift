//
//  TestingView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 01.06.2022.
//

import SwiftUI

struct TestingView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: FirstView()) {
                Text("To First View")
                    .foregroundColor(.gray)
                    .padding()
            }
            .navigationTitle("")
            .alignmentGuide(.leading, computeValue: { dimension in
                return 1.0
            })
        }
    }
}

struct FirstView: View {
    var body: some View {
        VStack {
            Text("First View")
        }
        .navigationBarHidden(false) // Use to hide back button
    }
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
    }
}
