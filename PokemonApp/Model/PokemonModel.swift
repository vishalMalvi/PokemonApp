//
//  PokemonModel.swift
//  PokemonApp
//
//  Created by Vishal_Malvi on 28/05/23.
//

import Foundation

// MARK: - PokemonModel
struct PokemonModel: Codable, Identifiable {
    let attack, defense: Int
    let description: String
    let evolutionChain: [EvolutionChain]?
    let height, id: Int
    let imageURL: String
    let name, type: String
    let weight: Int
    let pokemonDefense: Int?

    enum CodingKeys: String, CodingKey {
        case attack, defense, description, evolutionChain, height, id
        case imageURL = "imageUrl"
        case name, type, weight
        case pokemonDefense = "defense:"
    }
}

// MARK: - EvolutionChain
struct EvolutionChain: Codable {
    let id, name: String
}
