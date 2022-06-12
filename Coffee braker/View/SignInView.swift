//
//  SignInView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI

struct SignInView: View {
    
    let authManager = AuthManager()
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                
                TextField("Username", text: $username)
                    .padding(UIScreen.main.bounds.width/20)
                TextField("Password", text: $password)
                    .textContentType(.password)
                    .padding(UIScreen.main.bounds.width/20)
                Button(action: {
                    print("Sign In Button pressed")
                    authManager.signIn(email: username, password: password)
                    print("authManager's method passed")
                }, label: {
                    Text("Sign In")
                })
                    .padding(UIScreen.main.bounds.width/20)
            }
            .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height/2, alignment: .center)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
