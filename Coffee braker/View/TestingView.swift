//
//  TestingView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 01.06.2022.
//

import SwiftUI


struct TestingView: View {
    
    @State var text = "I'm a default text"
    @State var textFieldText = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text(text)
                    .padding(UIScreen.main.bounds.width/20)
                TextField("testingTextField", text: $textFieldText, onEditingChanged: { isEditing in
                    if isEditing {
                        print("Started editing")
                    } else {
                        print("Finished editing")
                    }
                }, onCommit: {
                    print("Commited")
                })
                    .frame(width: UIScreen.main.bounds.width/3, height: 40, alignment: .center)
                .border(Color.gray, width: 1)
                Button("I'm a button") {
                    text = "I've been just changed! Damn..."
                }
                .padding(UIScreen.main.bounds.width/20)
            }
            .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2, alignment: .center)
        }
    }
}


struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
    }
}
