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
    
    @State private var isSignInViewActive = false
    @State private var isSignUpViewActive = false
    
    var body: some View {
        
        ZStack{
            
            //MARK: Navigation Links
            NavigationLink(
                destination: SignInView(),
                isActive: $isSignInViewActive,
                label: {
                    EmptyView()
                })
            
            NavigationLink(
                destination: SignUpView(),
                isActive: $isSignUpViewActive,
                label: {
                    EmptyView()
                })
            
            //MARK: Visual UI
            LinearGradient(gradient: Gradient(colors: [.black, Color(CGColor(red: 0.4, green: 0.25, blue: 0.15, alpha: 1.0))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //MARK: Buttons
            VStack {
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 60))
                    .padding(.bottom, 100)
                
                HStack {
                    Button(action: {
                        onPress(buttonName: "Sign In")
                        isSignInViewActive.toggle()
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
                        isSignUpViewActive.toggle()
                    }, label: {
                        Text("Sign Up")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                            .padding()
                    })
                    .background(Color(.white))
                    .cornerRadius(15.0)
                }
                
                //MARK: Copyright section
                Text("Coffee braker")
                    .foregroundColor(.white)
                    .font(.system(size: 10))
                    .padding([.horizontal, .top], 150)
            }
        }
        
        .onAppear {
            print("WelcomeView On Appear")
        }
        .onDisappear {
            print("WelcomeView On Disappear")
        }
    }
}

//struct WelcomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomeView()
//    }
//}
