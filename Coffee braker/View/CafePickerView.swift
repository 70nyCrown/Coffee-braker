//
//  CafePickerView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 03.06.2022.
//

import SwiftUI

struct CafePickerView: View {
    
    var body: some View {
        
        Text("Cafe picker")
            
            .onAppear{
                print("CafePickerView On Appear")
            }
            
            .onDisappear {
                print("CafePickerView On Disappear")
            }
    }
}

struct CafePickerView_Previews: PreviewProvider {
    static var previews: some View {
        CafePickerView()
    }
}
