//
//  AuthManager.swift
//  Coffee braker
//
//  Created by Антон Воронин on 29.05.2022.
//

import Foundation
import FirebaseAuth

class AuthManager {
    
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
        }
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
            }
        }
    }
}
