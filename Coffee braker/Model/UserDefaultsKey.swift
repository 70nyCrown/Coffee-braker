//
//  UserDefaultsKey.swift
//  Coffee braker
//
//  Created by Антон Воронин on 13.06.2022.
//

import Foundation

class UserDefaultsKey {
    
    static let key = UserDefaultsKey()
    
    let isSignedIn: String = "isSignedIn"
    let pickedCafe: String = "pickedCafe"
    
    private init() {}
}
