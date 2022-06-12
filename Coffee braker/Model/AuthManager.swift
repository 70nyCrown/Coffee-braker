//
//  AuthManager.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import Foundation
import FirebaseAuth

class AuthManager {
    
    func signIn(email: String?, password: String?) -> Bool {
        
        var result = false
        
        //MARK: New Implementation
        guard let email = email else {
            print("ERROR - Enter email")
            return false
        }
        guard let password = password else {
            print("ERROR - Enter password")
            return false
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                print("ERROR is caught in SignIn!")
                print(error)
            } else {
                print("Signed in successfully!")
                result = true
            }
        }
        
        //MARK: Old Implementation
//        if let email = email, let password = password {
//
//            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
//                if let error = error {
//                    print("ERROR is caught in SignIn!")
//                    print(error)
//                } else {
//                    print("Signed in successfully!")
//                    result = true
//                }
//            }
//        }
//        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
//          guard let strongSelf = self else { return }
    
        return result
    }
    
    
    func signUp(email: String?, password: String?) -> Bool {
        
        var result = false
        
        guard let email = email else {
            print("ERROR - Enter email")
            return false
        }
        guard let password = password else {
            print("ERROR - Enter password")
            return false
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                print("ERROR is caught in SignIn!")
                print(error)
            } else {
                print("Signed in successfully!")
                result = true
            }
        }
        
        return result
        
    }
}
