//
//  WelcomeView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import SwiftUI

func onPress(buttonName : String) {
    print("\(buttonName) button pressed")
}

struct WelcomeView: View {
    
    @State var tagSelection: String? = nil
    
    var body: some View {
        NavigationView {
            
            ZStack{
                
                //MARK: Navigation Links
                NavigationLink(
                    destination: SignInView(tagSelection: $tagSelection),
                    tag: "signInView",
                    selection: $tagSelection,
                    label: { EmptyView() })

                NavigationLink(
                    destination: SignUpView(),
                    tag: "signUpView",
                    selection: $tagSelection,
                    label: { EmptyView() })
                
                //MARK: Visual UI
                LinearGradient(gradient: Gradient(colors: [.black, Color(CGColor(red: 0.4, green: 0.25, blue: 0.15, alpha: 1.0))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Welcome")
                        .foregroundColor(.white)
                        .font(.system(size: 60))
                        .padding(.bottom, 100)
                    
                    HStack {
                        Button(action: {
                            onPress(buttonName: "Sign In")
                            print("WelcomeView \(tagSelection)")
                            tagSelection = "signInView"
                            print("WelcomeView \(tagSelection)")
                        }, label: {
                            Text("Sign In")
                                .foregroundColor(.black)
                                .font(.system(size: 22))
                            .padding()
                        })
                        .background(Color(.white))
                        .cornerRadius(15.0)
                            
                        Button(action: {
                            onPress(buttonName: "Sign Up")
                            print("WelcomeView \(tagSelection)")
                            tagSelection = "signUpView"
                            print("WelcomeView \(tagSelection)")
                        }, label: {
                            Text("Sign Up")
                                .foregroundColor(.black)
                                .font(.system(size: 22))
                            .padding()
                        })
                        .background(Color(.white))
                        .cornerRadius(15.0)
                    }
                    
                    
                    Text("Coffee braker")
                        .foregroundColor(.white)
                        .font(.system(size: 10))
                        .padding([.horizontal, .top], 150)
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
