//
//  CatalogView.swift
//  Coffee braker
//
//  Created by Антон Воронин on 30.05.2022.
//

import SwiftUI

enum temperatureUnit : String {
    case F = "F"
    case C = "C"
    case K = "K"
}

let gradientGray: CGFloat = 0.3
let weather: String = "Sunny"
let temperatureCelcious: Double = 22.0
let temeraureSign: String = "+"

struct CatalogView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    Image("testImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5, alignment: .center)
                        .clipped()
                    
                    LinearGradient(gradient: Gradient(colors: [Color(CGColor(gray: gradientGray, alpha: 0.2)), Color(CGColor(gray: gradientGray, alpha: 0.0))]), startPoint: .top, endPoint: .bottom)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5, alignment: .center)
                }
                
                HStack {
                    Text("Today is \(weather)")
                        .padding()
                    Spacer()
                    Text("\(temeraureSign)\(temperatureCelcious) \(temperatureUnit.C.rawValue)")
                        .padding()
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
            .ignoresSafeArea()
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
