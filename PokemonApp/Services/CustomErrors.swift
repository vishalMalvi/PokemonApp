//
//  CustomErrors.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import Foundation

enum CustomErrors: Error  {
    case invalidResponse
    case invalidURL
    case invalidData
    case network(Error?)
}
