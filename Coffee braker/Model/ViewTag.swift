//
//  ViewTag.swift
//  Coffee braker
//
//  Created by Антон Воронин on 13.06.2022.
//

import Foundation
import SwiftUI


//MARK: is public??
enum Tag: String {
    
    case welcomeView
    case signInView
    case signUpView
    case cafePickerView
    case catalogView
    
}

struct Consts {
    static let a = "bruh"
    static let b = "what are you looking dor, buddy?"
}


class ViewTag: ObservableObject {
    
    @Published var tag: String = Tag.welcomeView.rawValue
    
    static let viewTag = ViewTag()
    
    func setViewTag(to newTag: Tag) {
        self.tag = newTag.rawValue
    }
    
}


