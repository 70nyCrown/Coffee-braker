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
    @State var isPassed: Bool = false
    
    @Binding var tagSelection: String?
    
    var body: some View {
        ZStack {
            
            VStack {
                    
                NavigationLink(
                    destination: CafePickerView(),
                    tag: "cafePickerView",
                    selection: $tagSelection,
                    label: { EmptyView() })
                
                TextField("Username", text: $username)
                    .padding(UIScreen.main.bounds.width/20)
                
                SecureField("Password", text: $password)
                    .padding(UIScreen.main.bounds.width/20)
                
                Button(action: {
                    print("Sign In Button pressed")
                    print("1 SingInView \(tagSelection)")
                    print("1 SingInView isPassed - \(isPassed)")
                    authManager.signIn(email: username, password: password)
                    isPassed = authManager.isSigned
                    print("2 SingInView isPassed - \(isPassed)")
                    if isPassed {
                        print("AuthManager returned TRUE")
                        print("2 SingInView \(tagSelection)")
                        tagSelection = "cafePickerView"
                        print("3 SingInView \(tagSelection)")
                    }
                    print("4 SingInView \(tagSelection)")
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

//struct SignInView_Previews: PreviewProvider {
//
//    @State var bindingValue1: String? = "signInView"
//
//    static var previews: some View {
//        SignInView(tagSelection: $bindingValue1)
//    }
//}
