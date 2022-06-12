//
//  Position.swift
//  Coffee braker
//
//  Created by Антон Воронин on 08.06.2022.
//

import Foundation
import SwiftUI

class PositionDataModel {
    
    let title: String
    let volumes: [Double]
    let pricePerVolume: Double
    let picture: Image
    
    
    
    init(title: String, volumes: [Double], pricePerVolume: Double, picture: Image) {
        self.title = title
        self.volumes = volumes
        self.pricePerVolume = pricePerVolume
        self.picture = picture
    }
    
}
