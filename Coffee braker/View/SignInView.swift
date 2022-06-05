//
//  SignInView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack {
            
            VStack {
                
                Text("email")
                    .padding(10)
                Text("password")
                    .padding(10)
                Button(action: {
                    
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
