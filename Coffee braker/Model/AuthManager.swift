//
//  AuthManager.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import Foundation
import FirebaseAuth

class AuthManager {
    
    
    func signIn(email: String?, password: String?, completion: @escaping (_ isSigned: Bool) -> Void) {
        
        guard let email = email else {
            print("AuthManager ERROR - Enter email")
            return
        }
        guard let password = password else {
            print("AuthManager ERROR - Enter password")
            return
        }
        
        print("AuthManager entered Firebase methods")
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in

            if let error = error {
                completion(false)
                print("Firebase ERROR is caught in SignIn!")
                print(error)
            } else {
                print("Firebase Signed in successfully!")
                print(authResult)
                completion(true)
            }
        }
        
        print("AuthManager exited Firebase methods")
    }
    
    func signUp(email: String?, password: String?, completion: @escaping (_ isSignedUp: Bool) -> Void) {
        
        guard let email = email else {
            print("ERROR - Enter email")
            return
        }
        guard let password = password else {
            print("ERROR - Enter password")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                print("ERROR is caught in SignIn!")
                print(error)
                completion(false)
            } else {
                print("Signed up successfully!")
                print(authResult)
                completion(true)
            }
        }
    }
}
