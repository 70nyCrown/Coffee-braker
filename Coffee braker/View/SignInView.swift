//
//  SignInView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI

struct SignInView: View {
    
    let authManager = AuthManager()
    
    @State var username: String = "testemail@test.com"
    @State var password: String = "test1234"
    @State private var isCafePickerViewActive = false
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                //MARK: Navigation Links
                NavigationLink(
                    destination: CafePickerView(),
                    isActive: $isCafePickerViewActive,
                    label: {
                        EmptyView()
                    })
                
                //MARK: Visual UI
                TextField("Username", text: $username)
                    .padding(UIScreen.main.bounds.width/20)
                
                SecureField("Password", text: $password)
                    .padding(UIScreen.main.bounds.width/20)
                
                //MARK: Buttons
                Button(action: {
                    
                    print("Sign In Button pressed")

                    authManager.signIn(email: username, password: password) { isSigned in
                        isSigned ? isCafePickerViewActive.toggle() : print("ERROR Sign In button")
                    }
                }, label: {
                    Text("Sign In")
                })
                    .padding(UIScreen.main.bounds.width/20)
            }
            .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height/2, alignment: .center)
        }
        .onAppear {
            print("SingInView On Appear")
        }
        .onDisappear {
            print("SingInView On Disappear")
        }
    }
}

//struct SignInView_Previews: PreviewProvider {
//
//    @State var bindingValue1: String? = "signInView"
//
//    static var previews: some View {
//        SignInView(tagSelection: $bindingValue1)
//    }
//}
