//
//  SignUpView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ZStack {
            
            VStack {
                
                Text("email")
                    .padding(10)
                Text("password")
                    .padding(10)
                Text("repeat password")
                    .padding(10)
                Button(action: {
                    
                }, label: {
                    Text("Register")
                })
            }
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
