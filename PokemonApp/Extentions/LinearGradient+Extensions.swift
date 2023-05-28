//
//  LinearGradient+Extensions.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import Foundation
import SwiftUI

extension LinearGradient {
    
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    static let fire      = LinearGradient(Color.fireStart, Color.fireEnd)
    static let poison    = LinearGradient(Color.poisonStart, Color.poisonEnd)
    static let water     = LinearGradient(Color.waterStart, Color.waterEnd)
    static let electric  = LinearGradient(Color.electricStart, Color.electricEnd)
    static let psychic   = LinearGradient(Color.psychicStart, Color.psychicEnd)
    static let ground    = LinearGradient(Color.groundStart, Color.groundEnd)
    static let flying    = LinearGradient(Color.flyingStart, Color.flyingEnd)
    static let fairy     = LinearGradient(Color.fairyStart, Color.fairyEnd)
}
