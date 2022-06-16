//
//  AuthManager.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import Foundation
import FirebaseAuth

class AuthManager {
    
    var isSigned = false
    
    func signIn(email: String?, password: String?, isSigned: Bool) {
        
        print("1 AuthManager signIn() - \(isSigned)")
        
        //MARK: New Implementation
        guard let email = email else {
            print("ERROR - Enter email")
            print("1.1 AuthManager signIn() - \(isSigned)")
            return
        }
        guard let password = password else {
            print("ERROR - Enter password")
            print("1.2 AuthManager signIn() - \(isSigned)")
            return
        }
        
        print("AuthManager entered Firebase methods")
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            result = true
            print("2 AuthManager signIn() - \(isSigned)")

            if let error = error {
                self.isSigned = false
                print("ERROR is caught in SignIn!")
                print("2.1 AuthManager signIn() - \(self.isSigned)")
                print(error)
            } else {
                print("Signed in successfully!")
                print("2.2.1 AuthManager signIn() isSigned - \(self.isSigned)")
                self.isSigned = true
                print("2.2.2 AuthManager signIn() isSigned - \(self.isSigned)")
            }
        }
        
        print("AuthManager exited Firebase methods")
     
        print("3 AuthManager signIn() - \(isSigned)")
    }
    
//    func signIn(email: String?, password: String?) -> Bool {
//
//        var result = false
//
//        print("1 AuthManager signIn() - \(result)")
//
//        //MARK: New Implementation
//        guard let email = email else {
//            print("ERROR - Enter email")
//            print("1.1 AuthManager signIn() - \(result)")
//            return false
//        }
//        guard let password = password else {
//            print("ERROR - Enter password")
//            print("1.2 AuthManager signIn() - \(result)")
//            return false
//        }
//
//        print("AuthManager entered Firebase methods")
//
//        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
//            result = true
//            print("2 AuthManager signIn() - \(result)")
//
//            if let error = error {
//                result = false
//                print("ERROR is caught in SignIn!")
//                print("2.1 AuthManager signIn() - \(result)")
//                print(error)
//            } else {
//                print("Signed in successfully!")
//                print("2.2.1 AuthManager signIn() isSigned - \(self.isSigned)")
//                self.isSigned = true
//                print("2.2.2 AuthManager signIn() isSigned - \(self.isSigned)")
//            }
//        }
//
//        print("AuthManager exited Firebase methods")
//
//        print("3 AuthManager signIn() - \(result)")
//        return result
//    }
    
    
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
